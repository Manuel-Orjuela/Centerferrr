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
    public partial class RegistrarCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (flpImagenC.HasFile)
            {
                string imagen = txtNombreC.Text + ".png";
                string rutaImg = Server.MapPath("~/Vista/Imagenes/Categoria/" + imagen);
                flpImagenC.SaveAs(rutaImg);
                string nombre = txtNombreC.Text;

                ClCategoriaL objCategoriaL = new ClCategoriaL();

                ClCategoriaE objCategoriaE = new ClCategoriaE();
                objCategoriaE.nombreCategoria = txtNombreC.Text;
                objCategoriaE.imagen = imagen;
                objCategoriaE.descripcion = txtDescripcionC.Text;

                

                if (string.IsNullOrEmpty(txtNombreC.Text) || string.IsNullOrEmpty(txtDescripcionC.Text) )
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario NO Registrado!', 'Uno o varios campos vacios.', 'error')", true);
                }
                else
                {
                    int validarCategoria = objCategoriaL.mtdValidarCategoria(txtNombreC.Text);


                    if (validarCategoria == 0)
                    {

                        int regis = objCategoriaL.mtdRegistrarCategoria(objCategoriaE);
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario Registrado!', 'Su usuario ha sido Registrado con exito.', 'success')", true);

                    }
                    else if (validarCategoria == 1)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario NO Registrado!', 'Su usuario ya se encuentra registrado en la base de Datos.', 'error')", true);
                    }
                }
            }
        }
    }
}