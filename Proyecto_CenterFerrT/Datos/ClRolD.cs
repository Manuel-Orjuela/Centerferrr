using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Datos
{
    public class ClRolD
    {
        public List<ClRolE> mtdListarRol()
        {
            string consulta = "select * from Rol";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            DataTable tblRol = objSQL.mtdSelectDes(consulta); ;

            //Creamos la lista 
            List<ClRolE> listaRol = new List<ClRolE>();
            ClRolE objRol = null;

            for (int i = 0; i < tblRol.Rows.Count; i++)
            {
                objRol = new ClRolE();
                objRol.idRol = int.Parse(tblRol.Rows[i]["idRol"].ToString());
                objRol.nombreRol = tblRol.Rows[i]["nombreRol"].ToString();
                listaRol.Add(objRol);
            }
            return listaRol;

        }
    }
}