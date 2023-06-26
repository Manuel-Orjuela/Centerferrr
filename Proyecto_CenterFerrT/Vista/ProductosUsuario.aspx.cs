using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_CenterFerrT.Vista
{
    public partial class ProductosUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int idCategoria = int.Parse(Request.QueryString["idCategoria"]);

                if (Request.QueryString["idCategoria"] != null)
                { 
                    ClProductoD objProD = new ClProductoD();

                    List<ClProductoE> listP = objProD.mtdListar(idCategoria);
                    reptProduc.DataSource = listP;
                    reptProduc.DataBind();
                }
            }
        }
        protected void reptProduc_ItemDataBound(object source, RepeaterCommandEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if (e.CommandName == "SelectCard")
                {
                    string cardId = e.CommandArgument.ToString();

                    ClProductoE producto = (ClProductoE)e.Item.DataItem;
                    ClCardsProducto card = new ClCardsProducto();

                    card.imagenUrl = "~/Vista/imagenes/Productos/" + producto.imgProducto;
                    card.nombre = producto.nombreProducto;
                    card.descripcion = producto.descripcion;
                    card.precio = producto.precioVenta;

                    PlaceHolder CardsContainer = (PlaceHolder)e.Item.FindControl("CardsContainer");
                    CardsContainer.Controls.Add(card);
                }

            }

        }
    }
}