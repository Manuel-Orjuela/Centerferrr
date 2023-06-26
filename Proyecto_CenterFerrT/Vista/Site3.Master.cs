using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_CenterFerrT.Vista
{
    public partial class Site3 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["Usuario"].ToString();

        }

        protected void lbtnCerrar_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = " ";
            Response.Redirect("~/Vista/HomeUsuario.aspx");
        }
    }
}