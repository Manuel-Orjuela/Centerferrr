using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;

namespace Proyecto_CenterFerrT.Datos
{
    public class ClUsuarioD
    {
        public ClUsuarioE mtdLogin(string documento, string clave)
        {
            string consulta = "select * from Usuario where documento='" + documento + "' and clave='" + clave + "'";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            DataTable tblDatos = objSQL.mtdSelectDes(consulta);

            ClUsuarioE objUsuarioE = null;

            if (tblDatos.Rows.Count > 0)
            {
                objUsuarioE = new ClUsuarioE();
                objUsuarioE.idUsuario = int.Parse(tblDatos.Rows[0]["idUsuario"].ToString());
                objUsuarioE.documento = tblDatos.Rows[0]["documento"].ToString();
                objUsuarioE.nombre = tblDatos.Rows[0]["nombre"].ToString();
                objUsuarioE.apellido = tblDatos.Rows[0]["apellido"].ToString();
                objUsuarioE.genero = tblDatos.Rows[0]["genero"].ToString();
                objUsuarioE.email = tblDatos.Rows[0]["email"].ToString();
                objUsuarioE.clave = tblDatos.Rows[0]["clave"].ToString();
                objUsuarioE.telefono = tblDatos.Rows[0]["telefono"].ToString();
                objUsuarioE.comentario = tblDatos.Rows[0]["comentario"].ToString();
                objUsuarioE.idRol = int.Parse(tblDatos.Rows[0]["idRol"].ToString());

            }
            return objUsuarioE;
        }

        public int mtdRegistrarUsuario(ClUsuarioE objDatos)
        {
            string consulta = "insert into Usuario(documento,nombre,apellido,genero,email,clave,telefono,comentario,idRol)" +
                "values('" + objDatos.documento + "','" + objDatos.nombre + "','" + objDatos.apellido + "','" + objDatos.genero + "','" + objDatos.email + "','" + objDatos.clave + "','" + objDatos.telefono + "','"+objDatos.comentario+"'," + objDatos.idRol + ")";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            int registro = objSQL.mtdIUDconect(consulta);
            return registro;

        }
        public List<ClUsuarioE> mtdListarUsuarios()
        {
            string consulta = "Select * from Usuario";
            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable tblUsu = objSql.mtdSelectDes(consulta);
            List<ClUsuarioE> ListaUsuarios = new List<ClUsuarioE>();

            for (int i = 0; i < tblUsu.Rows.Count; i++)
            {
                ClUsuarioE objUsuarioE = new ClUsuarioE();
                objUsuarioE.idUsuario = int.Parse(tblUsu.Rows[i]["idUsuario"].ToString());
                objUsuarioE.documento = tblUsu.Rows[i]["documento"].ToString();
                objUsuarioE.nombre = tblUsu.Rows[i]["nombre"].ToString();
                objUsuarioE.apellido = tblUsu.Rows[i]["apellido"].ToString();
                objUsuarioE.genero = tblUsu.Rows[i]["genero"].ToString();
                objUsuarioE.email = tblUsu.Rows[i]["email"].ToString();
                objUsuarioE.clave = tblUsu.Rows[i]["clave"].ToString();
                objUsuarioE.telefono = tblUsu.Rows[i]["telefono"].ToString();
                objUsuarioE.idRol = int.Parse(tblUsu.Rows[0]["idRol"].ToString());

                ListaUsuarios.Add(objUsuarioE);

            }
            return ListaUsuarios;

        }
        public List<ClUsuarioE> mtdBuscarPorDocumento(ClUsuarioE objUsuario)
        {
            string consulta = "Select * from Usuario where documento = '" + objUsuario.documento + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tblD = sql.mtdSelectDes(consulta);
            List<ClUsuarioE> listaD = new List<ClUsuarioE>();

            for (int i = 0; i < tblD.Rows.Count; i++)
            {
                ClUsuarioE objUsuarioE = new ClUsuarioE();
                objUsuarioE.idUsuario = int.Parse(tblD.Rows[i]["idUsuario"].ToString());
                objUsuarioE.documento = tblD.Rows[i]["documento"].ToString();
                objUsuarioE.nombre = tblD.Rows[i]["nombre"].ToString();
                objUsuarioE.apellido = tblD.Rows[i]["apellido"].ToString();
                objUsuarioE.genero = tblD.Rows[i]["genero"].ToString();
                objUsuarioE.email = tblD.Rows[i]["email"].ToString();
                objUsuarioE.telefono = tblD.Rows[i]["telefono"].ToString();
                objUsuarioE.idRol = int.Parse(tblD.Rows[0]["idRol"].ToString());
                listaD.Add(objUsuarioE);
            }
            return listaD;
        }

        public int mtdVerificarUsuario(ClUsuarioE objUsuarioE)
        {
            string verificar = "select * from Usuario where documento = '" + objUsuarioE.documento + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tblVerificar = sql.mtdSelectDes(verificar);

            return tblVerificar.Rows.Count;
        }
        public int mtdActualizarDatos(ClUsuarioE objUsuarioE, int id)
        {
            string consulta = "UPDATE Usuario SET nombre='" + objUsuarioE.nombre + "', apellido='" + objUsuarioE.apellido + "', genero='" + objUsuarioE.genero + "', email='" + objUsuarioE.email + "', telefono='" + objUsuarioE.telefono + "' WHERE idUsuario='" + id + "'";
            ClProcesarSQL objSql = new ClProcesarSQL();
            int registro = objSql.mtdIUDconect(consulta);

            return registro;

        }
        public ClUsuarioE mtdListarDocumento(string nombre)
        {

            string consulta = "SELECT * FROM Usuario WHERE nombre = '" + nombre + "'";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            DataTable tblUsu = objSQL.mtdSelectDes(consulta);

            ClUsuarioE objUsuarioE = new ClUsuarioE();
            for (int i = 0; i < tblUsu.Rows.Count; i++)
            {
             
                objUsuarioE.idUsuario = int.Parse(tblUsu.Rows[i]["idUsuario"].ToString());
                objUsuarioE.documento = tblUsu.Rows[i]["documento"].ToString();
                objUsuarioE.nombre = tblUsu.Rows[i]["nombre"].ToString();
                objUsuarioE.apellido = tblUsu.Rows[i]["apellido"].ToString();
                objUsuarioE.genero = tblUsu.Rows[i]["genero"].ToString();
                objUsuarioE.email = tblUsu.Rows[i]["email"].ToString();
                objUsuarioE.clave = tblUsu.Rows[i]["clave"].ToString();
                objUsuarioE.telefono = tblUsu.Rows[i]["telefono"].ToString();
                objUsuarioE.idRol = int.Parse(tblUsu.Rows[i]["idRol"].ToString());
                
            }
            return objUsuarioE;
        }

    }
}
