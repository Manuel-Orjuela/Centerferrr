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
    public partial class LoginF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string documento = txtDocument.Text;
            string clave = txtClav.Text;

            ClUsuarioL objUsuarioL = new ClUsuarioL();

            ClUsuarioE objDatos = objUsuarioL.mtdDatosLogin(documento, clave);

            if (objDatos != null)
            {
                if (objDatos.idRol == 1)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡SESION INICIADA COMO USUARIO!', 'Bienvenido, disfruta el contenido.', 'Success')", true);
                    Session["Usuario"] = objDatos.nombre;
                    Session["idUsuario"] = objDatos.idUsuario;
                    Response.Redirect("~/Vista/HomeUsuario.aspx");

                    
                }
                else if (objDatos.idRol == 2)
                {


                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡SESION INICIADA COMO ADMINISTRADOR!', 'Bienvenido, disfruta el contenido.', 'Success')", true);
                    Session["Administrador"] = objDatos.nombre + " " + objDatos.apellido;
                    Session["idUsuario"] = objDatos.idUsuario;

                    Response.Redirect("~/Vista/Home.aspx");

                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡SESIÓN NO INICIADA!', 'Lo siento, Usuario inexistente.', 'warning')", true);
            }

        }
    }
}
