using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using Proyecto_CenterFerrT.Logica;

namespace Proyecto_CenterFerrT.Vista
{
    public partial class RegistroProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string nombreP = txtNombrePro.Value;
            string telefono = txtContactoPro.Value;
            string departamento = txtDepartamentoPro.Value;
            string ciudad = txtCiudadPro.Value;
            string direccion = txtDireccionPro.Value;
            string correo = txtCorreoPro.Value;
            string clave = txtClavePro.Value;
  

            ClProveedorE objUsuario = new ClProveedorE();
            objUsuario.nombreProveedor = nombreP;
            objUsuario.telefono = telefono;
            objUsuario.departamentoUbicacion = departamento;
            objUsuario.ciudadUbicacion = ciudad;
            objUsuario.direccion = direccion;
            objUsuario.correo = correo;
            objUsuario.clave = clave;
           


            ClProveedorL objUsua = new ClProveedorL();


            int verificar = objUsua.mtdValidarProveedor(objUsuario);


            if (string.IsNullOrEmpty(txtNombrePro.Value) || string.IsNullOrEmpty(txtContactoPro.Value) || string.IsNullOrEmpty(txtDepartamentoPro.Value) || string.IsNullOrEmpty(txtCiudadPro.Value) || string.IsNullOrEmpty(txtCorreoPro.Value) || string.IsNullOrEmpty(txtClavePro.Value))
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡PROVEEDOR NO REGISTRADOR!', 'Uno o varios campos vacios.', 'warning')", true);
            }
            else
            {
                if (verificar==0)
                {

                    int regis = objUsua.mtdRegistrarProveedor(objUsuario);
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario Registrado!', 'Su usuario ha sido Registrado con exito.', 'success')", true);

                }
                else if (verificar == 1) 
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario NO Registrado!', 'Su usuario ya se encuentra registrado en la base de Datos.', 'error')", true);
                }
            }
        }
    }
}
