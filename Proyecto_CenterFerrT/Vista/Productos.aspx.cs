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
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["idCategoria"] != null)
                {
                    int idCategoria = int.Parse(Request.QueryString["idCategoria"]);
                    ClProductoD objProD = new ClProductoD();
                    List<ClProductoE> listP = objProD.mtdListar(idCategoria);
                    reptProduc.DataSource = listP;
                    reptProduc.DataBind();
                }

                //ClProductoL objProdL = new ClProductoL();
                //List<ClProductoE> listaP = objProdL.mtdListar();
                //reptProduc.DataSource = listaP;
                //reptProduc.DataBind();
            }
        }

        //Aca se configura cada uno de los items que se van a mostrar en el Repeater.
        //El ItemDataBound se dispara para cada item en el Repeater
        //Dentro del ItemDataBound se verifica si el elemento actual es una elemento de datos(ListltemType.item) o un elemento alternativo
        //(ListItemType.AlternatingItem) para asegurarse que solo se aplique la logica de carga a estos elementos
        protected void reptProduc_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //Se instancia la clase a partir de la propiedad DataItem del evento RepeaterItemEventArgs 
                //Se crea esta instancia para poder acceder a las propiedades de las clases y utilizarlas para configurar el objeto de clase CLCards
                ClProductoE producto = (ClProductoE)e.Item.DataItem;
                ////Creamos el objeto del cards y los cargamos
                ClCardsProducto card = new ClCardsProducto();
                card.imagenUrl = "~/Vista/imagenes/Productos/" + producto.imgProducto;
                card.nombre = producto.nombreProducto;
                card.descripcion = producto.descripcion;
                card.precio = producto.precioVenta;

                ////Agregamos los cards al container
                PlaceHolder CardsContainer = (PlaceHolder)e.Item.FindControl("CardsContainer");
                CardsContainer.Controls.Add(card);
            }

        }
    }
}
