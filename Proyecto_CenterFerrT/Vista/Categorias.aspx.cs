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
    public partial class Categorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!IsPostBack)
                {

                    ClCategoriaD objCat = new ClCategoriaD();
                    List<ClCategoriaE> listP = objCat.mtdListarCards();
                    reptProduc.DataSource = listP;
                    reptProduc.DataBind();
                }
            }

        }


        protected void reptProduc_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                ClCategoriaE categoria = (ClCategoriaE)e.Item.DataItem;
                ClCardsCategoriaE card = new ClCardsCategoriaE();

                card.idCategoria = categoria.idCategoria;
                card.imagenCategoria = "~/Vista/Imagenes/Categoria/" + categoria.imagen;
                card.categoria = categoria.nombreCategoria;
                card.descripcionCategoria = categoria.descripcion;

                PlaceHolder CardsContainer = (PlaceHolder)e.Item.FindControl("CardsContainer");
                CardsContainer.Controls.Add(card);
            }
        }
    }
}