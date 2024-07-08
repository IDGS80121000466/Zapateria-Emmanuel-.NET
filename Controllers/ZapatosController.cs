using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TiendaZapatosAPI.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace TiendaZapatosAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ZapatosController : ControllerBase
    {
        // Creando la variable de context de BD
        private readonly TiendaZapatosDbContext _baseDatos;

        public ZapatosController(TiendaZapatosDbContext baseDatos)
        {
            _baseDatos = baseDatos;
        }

        [HttpGet]
        [Route("ListaCategorias")]
        public async Task<ActionResult<IEnumerable<Categoria>>> ListaCategorias()
        {
            var categorias = await _baseDatos.Categorias.ToListAsync();

            if (categorias == null || categorias.Count == 0)
            {
                return NotFound("No se encontraron categorías.");
            }

            return Ok(categorias);
        }
        [HttpGet]
        [Route("ListaProductos")]
        public async Task<ActionResult<IEnumerable<Producto>>> ListaProductos()
        {
            var productos = await _baseDatos.Productos.ToListAsync();

            if (productos == null || productos.Count == 0)
            {
                return NotFound("No se encontraron productos.");
            }

            return Ok(productos);
        }

        [HttpGet]
        [Route("ProductosPorCategoria/{categoriaId}")]
        public async Task<ActionResult<IEnumerable<Producto>>> GetProductosPorCategoria(int categoriaId)
        {
            var productos = await _baseDatos.Productos
                .Where(p => p.CategoriaId == categoriaId)
                .Select(producto => new Producto
                {
                    ProductoId = producto.ProductoId,
                    Nombre = producto.Nombre,
                    Descripcion = producto.Descripcion,
                    Precio = producto.Precio,
                    NombreImagen = producto.NombreImagen,
                    NumeroZapato = producto.NumeroZapato,
                    Color = producto.Color,
                    Material = producto.Material,
                    Stock = producto.Stock
                })
                .ToListAsync();

            if (productos == null || productos.Count == 0)
            {
                return NotFound($"No se encontraron productos para la categoría con ID {categoriaId}");
            }

            return Ok(productos);
        }

        [HttpGet]
        [Route("Buscar")]
        public async Task<ActionResult<IEnumerable<object>>> BuscarProductos(string buscar)
        {
            var productos = await _baseDatos.Productos
                .Include(p => p.Categoria) // Incluir la relación con la categoría
                .Where(p =>
                    EF.Functions.Like(p.Nombre, $"%{buscar}%") ||
                    EF.Functions.Like(p.Descripcion, $"%{buscar}%") ||
                    EF.Functions.Like(p.NumeroZapato.ToString(), $"%{buscar}%") || // Convertir a string para buscar por texto
                    EF.Functions.Like(p.Color, $"%{buscar}%") ||
                    EF.Functions.Like(p.Material, $"%{buscar}%") ||
                    EF.Functions.Like(p.Categoria.Nombre, $"%{buscar}%"))
                .Select(producto => new {
                    ProductoId = producto.ProductoId,
                    Nombre = producto.Nombre,
                    Descripcion = producto.Descripcion,
                    Precio = producto.Precio,
                    NombreImagen = producto.NombreImagen,
                    Categoria = producto.Categoria.Nombre,
                    NumeroZapato = producto.NumeroZapato,
                    Color = producto.Color,
                    Material = producto.Material,
                    Stock = producto.Stock
                })
                .ToListAsync();

            if (productos == null || productos.Count == 0)
            {
                return NotFound($"No se encontraron productos que coincidan con '{buscar}'");
            }

            return Ok(productos);
        }


    }
}
