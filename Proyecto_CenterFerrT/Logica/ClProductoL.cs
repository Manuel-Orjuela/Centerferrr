using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Logica
{
    public class ClProductoL
    {
        public int mtdRegistrarProductos(ClProductoE objDatos)
        {
            ClProductoD objProductoD = new ClProductoD();
            int registrarProducto = objProductoD.mtdRegistrarProductos(objDatos);
            return registrarProducto;
        }
        //public List<ClProductoE> mtdListarProductos()
        //{
        //    ClProductoD objProducto = new ClProductoD();
        //    List<ClProductoE> listaProductos = new List<ClProductoE>();
        //    return listaProductos;
        //}
        public List<ClProductoE> mtdListarL(int idCategoria)
        {
            ClProductoD objProD = new ClProductoD();
            List<ClProductoE> list = objProD.mtdListar(idCategoria);
            return list;
        }
        public int mtdActualizarProducto(ClProductoE objProductoE)
        {
            ClProductoD objProductoD = new ClProductoD();
            int actualizarproducto = objProductoD.mtdActualizarProductos(objProductoE);
            return actualizarproducto;

        }
        public int mtdActuProduc(ClProductoE objPro, int id)
        {
            ClProductoD objProduc = new ClProductoD();
            int actu = objProduc.mtdActualizarDatosPro(objPro,id);
            return actu;
        }
        public List<ClProductoE> mtdListarProducto()
        {
            ClProductoD objPro = new ClProductoD();
            List<ClProductoE> listaP = objPro.mtdListarProductos();
            return listaP;
        }
        public List<ClProductoE> mtdBuscarP(ClProductoE objP)
        {
            ClProductoD objUsuarioD = new ClProductoD();
            List<ClProductoE> listap = objUsuarioD.mtdBuscarProductos(objP);
            return listap;
        }
        public List<ClProductoE> mtdListarProductoPorId(int id)
        {
            ClProductoD objUsuarioD = new ClProductoD();
            List<ClProductoE> listaProductos = objUsuarioD.mtdListarProductosPorId(id);
            return listaProductos;
        }
    }
}