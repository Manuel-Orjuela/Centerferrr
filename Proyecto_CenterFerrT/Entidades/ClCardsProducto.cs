using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Entidades
{
    public class ClCardsProducto : System.Web.UI.WebControls.WebControl
    {
        public string imagenUrl { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public double precio { get; set; }
    }
}