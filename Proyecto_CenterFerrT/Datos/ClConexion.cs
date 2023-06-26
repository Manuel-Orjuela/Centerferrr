using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Datos
{
    public class ClConexion
    {

        SqlConnection conexion = null;

        public SqlConnection mtdConexion()
        {
            conexion = new SqlConnection("Data Source=.;Initial Catalog=dbCenterferr_Pro_;Integrated Security=True");
            conexion.Open();
            return conexion;
        }
    }
}