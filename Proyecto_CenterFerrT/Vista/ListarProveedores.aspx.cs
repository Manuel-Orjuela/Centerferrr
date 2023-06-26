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
    public partial class ListarProveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClProveedorL objProveedor = new ClProveedorL();
                List<ClProveedorE> listaProveedor = objProveedor.mtdListarProveedor();
                GvListaProveedores.DataSource = listaProveedor;
                GvListaProveedores.DataBind();
            }
        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            ClProveedorE objProvedorE = new ClProveedorE();
            objProvedorE.nombreProveedor = txtNombre.Text;
            ClProveedorL objProvedorL = new ClProveedorL();
            List<ClProveedorE> list = objProvedorL.mtdBuscarP(objProvedorE);
            
            List<string> listanombre = new List<string>();
            for (int i = 0; i < list.Count; i++)
            {
                listanombre.Add(list[i].ToString());
                
            }
            GvBusqueda.DataSource = list;
            GvBusqueda.DataBind();

        }
    }
}