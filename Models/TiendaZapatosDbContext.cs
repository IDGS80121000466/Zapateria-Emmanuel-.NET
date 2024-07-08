using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace TiendaZapatosAPI.Models;

public partial class TiendaZapatosDbContext : DbContext
{
    public TiendaZapatosDbContext()
    {
    }

    public TiendaZapatosDbContext(DbContextOptions<TiendaZapatosDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Categoria> Categorias { get; set; }

    public virtual DbSet<Producto> Productos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) { }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Categoria>(entity =>
        {
            entity.HasKey(e => e.CategoriaId).HasName("PK__Categori__F353C1E581F723E5");

            entity.Property(e => e.Nombre).HasMaxLength(100);
        });

        modelBuilder.Entity<Producto>(entity =>
        {
            entity.HasKey(e => e.ProductoId).HasName("PK__Producto__A430AEA310A83494");

            entity.Property(e => e.Color).HasMaxLength(50);
            entity.Property(e => e.Descripcion).HasMaxLength(500);
            entity.Property(e => e.Material).HasMaxLength(100);
            entity.Property(e => e.Nombre).HasMaxLength(100);
            entity.Property(e => e.NombreImagen).HasMaxLength(200);
            entity.Property(e => e.NumeroZapato).HasMaxLength(10);
            entity.Property(e => e.Precio).HasColumnType("decimal(18, 2)");

            entity.HasOne(d => d.Categoria).WithMany(p => p.Productos)
                .HasForeignKey(d => d.CategoriaId)
                .HasConstraintName("FK__Productos__Categ__398D8EEE");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
