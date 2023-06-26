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
    public partial class RegistrarProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Cargamos el combo de la Categoria
                ClCategoriaL objCategoria = new ClCategoriaL();
                List<ClCategoriaE> listaCategoria = new List<ClCategoriaE>();
                listaCategoria = objCategoria.mtdListar();
                ddlCategoria.DataSource = listaCategoria;
                ddlCategoria.DataTextField = "nombreCategoria";
                ddlCategoria.DataValueField = "idCategoria";
                ddlCategoria.DataBind();
            }
        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (flpImagen.HasFile)
            {
                string imagen = txtCodigoP.Text + ".png";
                string rutaImg = Server.MapPath("~/Vista/Imagenes/" + imagen);
                flpImagen.SaveAs(rutaImg);
                string codigo = txtCodigoP.Text;
                ClProductoL objProducto = new ClProductoL();

                ClProductoE objDatosProducto = new ClProductoE();
                objDatosProducto.codigoProducto = txtCodigoP.Text;
                objDatosProducto.nombreProducto = txtNombreP.Text;
                objDatosProducto.cantidadStock = txtCantidad.Text;
                objDatosProducto.precioVenta = float.Parse(txtPrecioP.Text);
                objDatosProducto.imgProducto = imagen;
                objDatosProducto.descripcion = txtDescripcionP.Text;
                objDatosProducto.marca = txtMarca.Text;
                objDatosProducto.funcionalidad = txtFuncionalidad.Text;
                objDatosProducto.idCategoria = int.Parse(ddlCategoria.SelectedValue.ToString());

                ClProductoD objProductoL = new ClProductoD();
                int registrar = objProductoL.mtdRegistrarProductos(objDatosProducto);

                if (registrar == 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registro Exitoso!')", true);

                }
            }
        }
    }
}