using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Datos
{
    public class ClProcesarSQL
    {
        public DataTable mtdSelectDes(string consulta)
        {
            ClConexion objConexion = new ClConexion();
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, objConexion.mtdConexion());
            DataTable tblRol = new DataTable();
            adaptador.Fill(tblRol);
            objConexion.mtdConexion().Close();
            return tblRol;
        }

        //Ejecuta consulta Select de forma Conectada y retorna DataReader 
        public void mtdSelectConec(string consulta)
        {
            ClConexion obConexion = new ClConexion();
            obConexion.mtdConexion().Open();
            SqlCommand comando = new SqlCommand(consulta, obConexion.mtdConexion());
            SqlDataReader regis = comando.ExecuteReader();
            obConexion.mtdConexion().Close();

        }

        //Ejecuta SQL Insert, Delet, Update en forma conectada y retorna conectada y retorna entero

        public int mtdIUDconect(string consulta)
        {
            ClConexion conexion = new ClConexion();
            SqlCommand comando = new SqlCommand(consulta, conexion.mtdConexion());
            int regis = comando.ExecuteNonQuery();
            conexion.mtdConexion().Close();

            return regis;
        }
        public SqlCommand mtdConectar(string sp)
        {

            ClConexion objConexion = new ClConexion();
            SqlConnection conexion = objConexion.mtdConexion();
            conexion.Open();
            SqlCommand cmd = new SqlCommand(sp, conexion);
            return cmd;


        }
    }
}