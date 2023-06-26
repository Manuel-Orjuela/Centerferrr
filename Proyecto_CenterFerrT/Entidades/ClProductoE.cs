using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Entidades
{
    public class ClProductoE
    {
        public int idProducto { get; set; }
        public string codigoProducto { get; set; }
        public string nombreProducto { get; set; }
        public string cantidadStock { get; set; }
        public double precioVenta { get; set; }
        public string imgProducto { get; set; }
        public string descripcion { get; set; }
        public string marca { get; set; }
        public string funcionalidad { get; set; }
        public int idCategoria { get; set; }
    }
}