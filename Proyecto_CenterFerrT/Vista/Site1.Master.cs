using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_CenterFerrT
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAdministrador.Text = Session["Administrador"].ToString();

        }
        protected void lbtnCerrar_Click(object sender, EventArgs e)
        {
            Session["Administrador"] = " ";
            Response.Redirect("~/Vista/HomeUsuario.aspx");
        }
    }
}