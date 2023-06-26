using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Datos
{
    public class ClCategoriaD
    {
        public List<ClCategoriaE> mtdListaCategoria()
        {
            string consulta = "select * from Categoria";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            DataTable tblCategoriaP = objSQL.mtdSelectDes(consulta);

            List<ClCategoriaE> listaCategoriaP = new List<ClCategoriaE>();
            ClCategoriaE objCategoriaE = null;

            for (int i = 0; i < tblCategoriaP.Rows.Count; i++)
            {
                objCategoriaE = new ClCategoriaE();
                objCategoriaE.idCategoria = int.Parse(tblCategoriaP.Rows[i]["idCategoria"].ToString());
                objCategoriaE.nombreCategoria = tblCategoriaP.Rows[i]["categoria"].ToString();
                listaCategoriaP.Add(objCategoriaE);
            }
            return listaCategoriaP;
        }
        public int mtdRegistrarCategoria(ClCategoriaE objCategoriaE)
        {
            string consulta = "INSERT INTO Categoria (categoria, imagen, descripcion) VALUES ('" + objCategoriaE.nombreCategoria + "','" + objCategoriaE.imagen + "','" + objCategoriaE.descripcion + "')";
            ClProcesarSQL sql = new ClProcesarSQL();
            int registro = sql.mtdIUDconect(consulta);
            return registro;
        }
        public int mtdValidarCategoria(string categoria)
        {
            string consulta = "SELECT * from Categoria WHERE categoria='" + categoria + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tblcategoria  = sql.mtdSelectDes(consulta);
            return tblcategoria.Rows.Count;
        }
        public List<ClCategoriaE> mtdListarCardsCat(int idCategoria)
        {
            string consulta = "SELECT * FROM Categoria Where = '"+ idCategoria+"'";
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblCategoria = SQL.mtdSelectDes(consulta);
            List<ClCategoriaE> listaCategoria = new List<ClCategoriaE>();
            for (int i = 0; i < tblCategoria.Rows.Count; i++)
            {
                ClCategoriaE objCategoria = new ClCategoriaE();
                objCategoria.idCategoria = int.Parse(tblCategoria.Rows[i]["idCategoria"].ToString());
                objCategoria.nombreCategoria = tblCategoria.Rows[i]["categoria"].ToString();
                objCategoria.descripcion = tblCategoria.Rows[i]["descripcion"].ToString();
                objCategoria.imagen = tblCategoria.Rows[i]["imagen"].ToString();

                listaCategoria.Add(objCategoria);
            }
            return listaCategoria;
        }
        public List<ClCategoriaE> mtdListarCards()
        {
            string consulta = "SELECT * FROM Categoria";
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblCategoria = SQL.mtdSelectDes(consulta);
            List<ClCategoriaE> listaCategoria = new List<ClCategoriaE>();
            for (int i = 0; i < tblCategoria.Rows.Count; i++)
            {
                ClCategoriaE objCategoria = new ClCategoriaE();
                objCategoria.idCategoria = int.Parse(tblCategoria.Rows[i]["idCategoria"].ToString());
                objCategoria.nombreCategoria = tblCategoria.Rows[i]["categoria"].ToString();
                objCategoria.descripcion = tblCategoria.Rows[i]["descripcion"].ToString();
                objCategoria.imagen = tblCategoria.Rows[i]["imagen"].ToString();

                listaCategoria.Add(objCategoria);
            }
            return listaCategoria;
        }
    }
}