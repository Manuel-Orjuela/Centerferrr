using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using Proyecto_CenterFerrT.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_CenterFerrT.Vista
{
    public partial class DatosUsuarioActualizar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClUsuarioL objUsuarioL = new ClUsuarioL();
                ClUsuarioE objUsuarioE = new ClUsuarioE();

                lblDocumento.Text = Session["Usuario"].ToString();
                string nombre = lblDocumento.Text;
                objUsuarioE = objUsuarioL.mtdListarDocumento(nombre);

                objUsuarioE.nombre = lblNombre.Text;

                string ApellidoU = objUsuarioE.apellido;
                lblApellido.Text = ApellidoU;
                string GeneroU = objUsuarioE.genero;
                lblGenero.Text = GeneroU;
                string EmaiU = objUsuarioE.email;
                lblEmail.Text = EmaiU;
                string TelefonoU = objUsuarioE.telefono;
                lblTelefono.Text = TelefonoU;



            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Session["idUsuario"].ToString());
            ClUsuarioL objUsuarioL = new ClUsuarioL();
            ClUsuarioE objUsuarioE = new ClUsuarioE();

            objUsuarioE.nombre = txtNombre.Text;
            objUsuarioE.apellido = txtApellido.Text;
            objUsuarioE.genero = txtGenero.Text;
            objUsuarioE.email = txtEmail.Text;
            objUsuarioE.telefono = txtTelefono.Text;

            if (string.IsNullOrEmpty(txtNombre.Text)|| string.IsNullOrEmpty(txtApellido.Text) || string.IsNullOrEmpty(txtGenero.Text) || string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtTelefono.Text))
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡DATOS INVÁLIDOS!', 'Uno o más campos vacíos.', 'error')", true);
            }
            else
            {
                objUsuarioL.mtdActualizarUsuario(objUsuarioE, id);
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario Actualizado!', 'Datos actualizados correctamente.', 'success')", true);
               
            }

        }
    }

}
