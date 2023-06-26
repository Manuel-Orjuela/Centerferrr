using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace Proyecto_CenterFerrT.Datos
{
    public class ClProveedorD
    {
        public int mtdRegistrarProveedor(ClProveedorE objDatosProveedor)
        {
            string consulta = "insert into Proveedor(nombreProveedor, telefono, departamentoUbicacion, ciudadUbicacion, direccion, correo, clave)" +
                "values('" + objDatosProveedor.nombreProveedor + "','" + objDatosProveedor.telefono + "','" + objDatosProveedor.departamentoUbicacion + "','" + objDatosProveedor.ciudadUbicacion + "','" + objDatosProveedor.direccion + "','" + objDatosProveedor.correo + "','" + objDatosProveedor.clave + "')";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            int registro = objSQL.mtdIUDconect(consulta);
            return registro;

        }
        public List<ClProveedorE> mtdListarProveedor()
        {
            string consulta = "Select * from Proveedor";
            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable tblUsu = objSql.mtdSelectDes(consulta);
            List<ClProveedorE> ListaProveedor = new List<ClProveedorE>();

            for (int i = 0; i < tblUsu.Rows.Count; i++)
            {
                ClProveedorE objUsuarioE = new ClProveedorE();
                objUsuarioE.idProveedor = int.Parse(tblUsu.Rows[i]["idProveedor"].ToString());
                objUsuarioE.nombreProveedor = tblUsu.Rows[i]["nombreProveedor"].ToString();
                objUsuarioE.telefono = tblUsu.Rows[i]["telefono"].ToString();
                objUsuarioE.departamentoUbicacion = tblUsu.Rows[i]["departamentoUbicacion"].ToString();
                objUsuarioE.ciudadUbicacion = tblUsu.Rows[i]["ciudadUbicacion"].ToString();
                objUsuarioE.direccion = tblUsu.Rows[i]["direccion"].ToString();
                objUsuarioE.correo = tblUsu.Rows[i]["correo"].ToString();
                objUsuarioE.clave = tblUsu.Rows[i]["clave"].ToString();


                ListaProveedor.Add(objUsuarioE);

            }
            return ListaProveedor;

        }

        public List<ClProveedorE> mtdBuscarProveedor(ClProveedorE objProveedor)
        {
            string consulta = "Select * From Proveedor where nombreProveedor='" + objProveedor.nombreProveedor + "'";
            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable tablaProveedor = objSql.mtdSelectDes(consulta);
            List<ClProveedorE> ListP = new List<ClProveedorE>();

            for (int i = 0; i < tablaProveedor.Rows.Count; i++)
            {
                ClProveedorE ObjPro = new ClProveedorE();
                ObjPro.idProveedor = int.Parse(tablaProveedor.Rows[i]["idProveedor"].ToString());
                ObjPro.nombreProveedor = tablaProveedor.Rows[i]["nombreProveedor"].ToString();
                ObjPro.telefono = tablaProveedor.Rows[i]["telefono"].ToString();
                ObjPro.departamentoUbicacion = tablaProveedor.Rows[i]["departamentoUbicacion"].ToString();
                ObjPro.ciudadUbicacion = tablaProveedor.Rows[i]["ciudadUbicacion"].ToString();
                ObjPro.direccion = tablaProveedor.Rows[i]["direccion"].ToString();
                ObjPro.clave = tablaProveedor.Rows[i]["clave"].ToString();
                ObjPro.correo = tablaProveedor.Rows[i]["correo"].ToString();



                ListP.Add(ObjPro);
            }
            return ListP;
        }
        public int mtdVerificarProveedor(ClProveedorE objProveedorE)
        {
            string consulta = "Select * from Proveedor WHERE idProveedor = '" + objProveedorE.idProveedor + "'";
            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable listaPro = objSql.mtdSelectDes(consulta);
            return listaPro.Rows.Count;
        }
    }
}
