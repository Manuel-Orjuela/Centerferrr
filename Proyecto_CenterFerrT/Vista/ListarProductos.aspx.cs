using Proyecto_CenterFerrT.Entidades;
using Proyecto_CenterFerrT.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_CenterFerrT.Vista
{
    public partial class ListarProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClProductoL objL = new ClProductoL();
                List<ClProductoE> listaP = objL.mtdListarProducto();
                GvListaProductos.DataSource = listaP;
                GvListaProductos.DataBind();
            }

        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            ClProductoE objProductE = new ClProductoE();
            objProductE.nombreProducto = txtNombre.Text;
            ClProductoL objP = new ClProductoL();
            List<ClProductoE> list = objP.mtdBuscarP(objProductE);
            List<string> listaproducto = new List<string>();
            for (int i = 0; i < list.Count; i++)
            {
                listaproducto.Add(list[i].ToString());
            }
            GvBusqueda.DataSource = list;
            GvBusqueda.DataBind();

        }

        protected void GvListaProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string documento= GvListaProductos.SelectedRow.Cells[0].Text;
            Response.Redirect("EditarProductos.aspx?dc=" + documento + "");
        }
    }
}