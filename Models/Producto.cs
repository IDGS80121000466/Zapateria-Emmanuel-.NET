using System;
using System.Collections.Generic;

namespace TiendaZapatosAPI.Models;

public partial class Producto
{
    public int ProductoId { get; set; }

    public string Nombre { get; set; } = null!;

    public string? Descripcion { get; set; }

    public decimal Precio { get; set; }

    public string? NombreImagen { get; set; }

    public int? CategoriaId { get; set; }

    public string? NumeroZapato { get; set; }

    public string? Color { get; set; }

    public string? Material { get; set; }

    public int? Stock { get; set; }

    public virtual Categoria? Categoria { get; set; }
}
