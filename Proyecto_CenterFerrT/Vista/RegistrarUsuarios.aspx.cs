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
    public partial class RegistrarUsuarios : System.Web.UI.Page
    {
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Vista/LoginF.aspx");
        }
            protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!IsPostBack)
                {
                    ClRolL objRol = new ClRolL();
                    List<ClRolE> listaRoles = new List<ClRolE>();
                    listaRoles = objRol.mtdListaRol();
                    ddlRol.DataSource = listaRoles;
                    ddlRol.DataTextField = "nombreRol";
                    ddlRol.DataValueField = "idRol";
                    ddlRol.DataBind();
                    ddlRol.Items.Insert(0, new ListItem("Seleccione:", "0"));
                }
            }
            ////Cargamos datos al combo de rol
            //ClRolL objRol = new ClRolL();
            //List<ClRolE> listaRol = new List<ClRolE>();
            //listaRol = objRol.mtdListaRol();
            //ddlRol.DataSource = listaRol;
            //ddlRol.DataValueField = "idRol";
            //ddlRol.DataTextField = "nombreRol";        
            //ddlRol.DataBind();
        }

        protected void search_ServerClick(object sender, EventArgs e)
        {
            string documento = txtDocumento.Value;
            string nombre = txtNombre.Value;
            string apellido = txtApellido.Value;
            string genero = txtGenero.Value;
            string email = txtEmail.Value;
            string clave = txtClave.Value;
            string telefono = txtTelefono.Value;


            ClUsuarioE objUsuario = new ClUsuarioE();
            objUsuario.documento = documento;
            objUsuario.nombre = nombre;
            objUsuario.apellido = apellido;
            objUsuario.genero = genero;
            objUsuario.email = email;
            objUsuario.clave = clave;
            objUsuario.telefono = telefono;
            objUsuario.idRol = int.Parse(ddlRol.SelectedValue.ToString());



            ClUsuarioL objUsua = new ClUsuarioL();

            int existencia = objUsua.mtdVerificarUsuario(objUsuario);

            if (string.IsNullOrEmpty(txtDocumento.Value) || string.IsNullOrEmpty(txtNombre.Value) || string.IsNullOrEmpty(txtApellido.Value) || string.IsNullOrEmpty(txtGenero.Value) || string.IsNullOrEmpty(txtEmail.Value) || string.IsNullOrEmpty(txtClave.Value) || string.IsNullOrEmpty(txtTelefono.Value))
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario NO Registrado!', 'Uno o varios campos vacios.', 'error')", true);
            }
            else
            {
                if (existencia == 0)
                {

                    int regis = objUsua.mtdRegistrarUsuario(objUsuario);
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario Registrado!', 'Su usuario ha sido Registrado con exito.', 'success')", true);

                }
                else if (existencia == 1)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario NO Registrado!', 'Su usuario ya se encuentra registrado en la base de Datos.', 'error')", true);
                }
            }



        }


        }
    }
