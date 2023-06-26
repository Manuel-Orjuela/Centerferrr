using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Datos
{
    public class ClProductoD
    {
        public int mtdRegistrarProductos(ClProductoE objDatos)
        {
            string consulta = "INSERT INTO Producto(codigoProducto,nombreProducto,cantidadStock,precioVenta,imagen,descripcion,marca,idCategoria)" +
            "values(" + objDatos.codigoProducto + ",'" + objDatos.nombreProducto + "','" + objDatos.cantidadStock + "','" + objDatos.precioVenta + "','" + objDatos.imgProducto + "','" + objDatos.descripcion + "','" + objDatos.marca + "'," + objDatos.idCategoria + ")";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            int regProductos = objSQL.mtdIUDconect(consulta);
            return regProductos;
        }

        public List<ClProductoE> mtdListar(int idCategoria)
        {
            string consulta = "Select * from Producto Where idCategoria =" + idCategoria;
            ClProcesarSQL objSQL = new ClProcesarSQL();
            DataTable tblProducto = objSQL.mtdSelectDes(consulta);
            List<ClProductoE> listaProducto = new List<ClProductoE>();
            for (int i = 0; i < tblProducto.Rows.Count; i++)
            {
                ClProductoE objProducto = new ClProductoE();
                objProducto.idProducto = int.Parse(tblProducto.Rows[i]["IdProducto"].ToString());
                objProducto.codigoProducto = tblProducto.Rows[i]["codigoProducto"].ToString();
                objProducto.nombreProducto = tblProducto.Rows[i]["nombreProducto"].ToString();
                objProducto.cantidadStock = tblProducto.Rows[i]["cantidadStock"].ToString();
                objProducto.precioVenta = int.Parse(tblProducto.Rows[i]["precioVenta"].ToString());
                objProducto.imgProducto = tblProducto.Rows[i]["imagen"].ToString();
                objProducto.descripcion = tblProducto.Rows[i]["descripcion"].ToString();
                objProducto.marca = tblProducto.Rows[i]["marca"].ToString();
                objProducto.idCategoria = int.Parse(tblProducto.Rows[i]["idCategoria"].ToString());
                listaProducto.Add(objProducto);
            }
            return listaProducto;
        }
        public List<ClProductoE> mtdListarProductos()
        {
            string consulta = "Select * From Producto";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tblPro = sql.mtdSelectDes(consulta);
            List<ClProductoE> listaPro = new List<ClProductoE>();
            for (int i = 0; i < tblPro.Rows.Count; i++)
            {
                ClProductoE objPro = new ClProductoE();
                objPro.codigoProducto = tblPro.Rows[i]["codigoProducto"].ToString();
                objPro.nombreProducto = tblPro.Rows[i]["nombreProducto"].ToString();
                objPro.cantidadStock = tblPro.Rows[i]["cantidadStock"].ToString();
                objPro.precioVenta = int.Parse(tblPro.Rows[i]["precioVenta"].ToString());
                objPro.imgProducto = tblPro.Rows[i]["imagen"].ToString();
                objPro.descripcion = tblPro.Rows[i]["descripcion"].ToString();
                objPro.marca = tblPro.Rows[i]["marca"].ToString();
                objPro.idCategoria = int.Parse(tblPro.Rows[i]["idCategoria"].ToString());
                listaPro.Add(objPro);

            }
            return listaPro;
        }
        public int mtdActualizarProductos(ClProductoE objDatos)
        {
            string consulta = "INSERT INTO Producto(codigoProducto,nombreProducto,cantidadStock,precioVenta,imagen,descripcion,marca,idCategoria)" +
            "values(" + objDatos.codigoProducto + ",'" + objDatos.nombreProducto + "','" + objDatos.cantidadStock + "','" + objDatos.precioVenta + "','" + objDatos.imgProducto + "','" + objDatos.descripcion + "','" + objDatos.marca + "'," + objDatos.idCategoria + ")";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            int regProductos = objSQL.mtdIUDconect(consulta);
            return regProductos;
        }
        public List<ClProductoE> mtdBuscarProductos(ClProductoE objPro)
        {
            string consulta = "Select * from Producto Where nombreProducto = '" + objPro.nombreProducto + "'";
            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable tblDatos = objSql.mtdSelectDes(consulta);
            List<ClProductoE> listabus = new List<ClProductoE>();

            for (int i = 0; i < tblDatos.Rows.Count; i++)
            {
                ClProductoE objP = new ClProductoE();
                objP.nombreProducto = tblDatos.Rows[i]["nombreProducto"].ToString();
                objP.codigoProducto = tblDatos.Rows[i]["codigoProducto"].ToString();
                objP.cantidadStock = tblDatos.Rows[i]["cantidadStock"].ToString();
                objP.precioVenta = int.Parse(tblDatos.Rows[i]["precioVenta"].ToString());
                objP.imgProducto = tblDatos.Rows[i]["imagen"].ToString();
                objP.descripcion = tblDatos.Rows[i]["descripcion"].ToString();
                objP.marca = tblDatos.Rows[i]["marca"].ToString();
                objP.idCategoria = int.Parse(tblDatos.Rows[i]["idCategoria"].ToString());
                listabus.Add(objP);
            }
            return listabus;
        }
        public int mtdActualizarDatosPro(ClProductoE objProduct, int id)
        {
            string consulta = "INSERT INTO Producto(codigoProducto,nombreProducto,cantidadStock,precioVenta,imagen,descripcion,marca,idCategoria)" +
            "values(" + objProduct.codigoProducto + ",'" + objProduct.nombreProducto + "','" + objProduct.cantidadStock + "','" + objProduct.precioVenta + "','" + objProduct.imgProducto + "','" + objProduct.descripcion + "','" + objProduct.marca + "'," + objProduct.idCategoria + ")";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            int regProductos = objSQL.mtdIUDconect(consulta);
            return regProductos;
        }
        public List<ClProductoE> mtdListarProductosPorId(int id)
        {
            string consulta = "Select * From Producto WHERE idProducto =" + id + "";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tblPro = sql.mtdSelectDes(consulta);
            List<ClProductoE> listaPro = new List<ClProductoE>();
            for (int i = 0; i < tblPro.Rows.Count; i++)
            {
                ClProductoE objPro = new ClProductoE();
                objPro.codigoProducto = tblPro.Rows[i]["codigoProducto"].ToString();
                objPro.nombreProducto = tblPro.Rows[i]["nombreProducto"].ToString();
                objPro.cantidadStock = tblPro.Rows[i]["cantidadStock"].ToString();
                objPro.precioVenta = int.Parse(tblPro.Rows[i]["precioVenta"].ToString());
                objPro.imgProducto = tblPro.Rows[i]["imagen"].ToString();
                objPro.descripcion = tblPro.Rows[i]["descripcion"].ToString();
                objPro.marca = tblPro.Rows[i]["marca"].ToString();
                objPro.idCategoria = int.Parse(tblPro.Rows[i]["idCategoria"].ToString());
                listaPro.Add(objPro);

            }
            return listaPro;

        }
    }
}

