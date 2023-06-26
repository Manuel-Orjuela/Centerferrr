using Proyecto_CenterFerrT.Datos;
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
    public partial class ListarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClUsuarioL objUsuarioL = new ClUsuarioL();
                List<ClUsuarioE> lista = objUsuarioL.mtdListarUsuario();
                GvListaUsuarios.DataSource = lista;
                GvListaUsuarios.DataBind();
            }

        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            ClUsuarioE objUsuarioE = new ClUsuarioE();
            objUsuarioE.documento = txtDocumento.Text;
            ClUsuarioL objUsuarioL = new ClUsuarioL();
            List<ClUsuarioE> List = objUsuarioL.mtdBusquedaPorDocumento(objUsuarioE);

            List<string> listadocu = new List<string>();
            for (int i = 0; i < List.Count; i++)
            {
                listadocu.Add(List[i].ToString());

            }
            GvBusqueda.DataSource = List;
            GvBusqueda.DataBind();
        }
    }
}