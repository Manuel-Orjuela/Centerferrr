using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Entidades
{
    public class ClCardsCategoriaE : System.Web.UI.WebControls.WebControl
    {
        public int idCategoria { get; set; }
        public string categoria { get; set; }
        public string imagenCategoria { get; set; }
        public string descripcionCategoria { get; set; }
    }
}