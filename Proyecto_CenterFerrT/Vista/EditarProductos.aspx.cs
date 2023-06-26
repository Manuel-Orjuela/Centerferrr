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
    public partial class EditarProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClProductoE objProductE = new ClProductoE();
                ClProductoL objProductL = new ClProductoL();

                Label1.Text = Request.QueryString["dc"].ToString();
                string documento = Request.QueryString["dc"].ToString();
                Label1.Text = documento.ToString();
                Label1.Visible = txtNombreProducto.Visible;
                int id = int.Parse(Request.QueryString["dc"].ToString());
                List<ClProductoE> listaP = objProductL.mtdListarProductoPorId(id);
                objProductE.codigoProducto = LblCodigoProducto.Text;

                string nombreP = objProductE.nombreProducto;
                lblNombreP.Text = nombreP;

                string cantidadSto = objProductE.cantidadStock;
                lblCantidad.Text = cantidadSto;

                double precio = double.Parse(objProductE.precioVenta.ToString());
                precio = Convert.ToDouble(precio);
            }
           

        
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["dc"].ToString());
            ClProductoL objProductoL = new ClProductoL();
            ClProductoE objProductoE = new ClProductoE();
           
            objProductoE.codigoProducto = txtCodigoProducto.Text;
            objProductoE.nombreProducto = txtNombreProducto.Text;
            objProductoE.cantidadStock = txtCantidadStock.Text;
            objProductoE.precioVenta = double.Parse(txtPrecio.Text);
            objProductoE.descripcion = txtDescripcion.Text;
            objProductoE.marca = txtMarca.Text;

            if (string.IsNullOrEmpty(txtNombreProducto.Text) || string.IsNullOrEmpty(txtCodigoProducto.Text) || string.IsNullOrEmpty(txtCantidadStock.Text) || string.IsNullOrEmpty(txtPrecio.Text) || string.IsNullOrEmpty(txtDescripcion.Text) || string.IsNullOrEmpty(txtMarca.Text)) 
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡DATOS INVÁLIDOS!', 'Uno o más campos vacíos.', 'error')", true);
            } 
            else 
            {
                objProductoL.mtdActuProduc(objProductoE, id);
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Usuario Actualizado!', 'Datos de producto actualizados correctamente.', 'success')", true);

            }
        }
    }
}