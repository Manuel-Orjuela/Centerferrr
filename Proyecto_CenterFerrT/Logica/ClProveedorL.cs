using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Logica
{
    public class ClProveedorL
    {
        public int mtdRegistrarProveedor(ClProveedorE objDatosProveedor)
        {
            ClProveedorD objProveedor = new ClProveedorD();
            int registro = objProveedor.mtdRegistrarProveedor(objDatosProveedor);
            return registro;
        }
        public List<ClProveedorE> mtdListarProveedor()
        {
            ClProveedorD objProvedorD = new ClProveedorD();
            List<ClProveedorE> listaProveedor = objProvedorD.mtdListarProveedor();
            return listaProveedor;
        }
        public List<ClProveedorE> mtdBuscarP(ClProveedorE objprove)
        {
            ClProveedorD objProvedorD = new ClProveedorD();
            List<ClProveedorE> listaP = objProvedorD.mtdBuscarProveedor(objprove);
            return listaP;
        }
        public int mtdValidarProveedor(ClProveedorE objProvedorE)
        {
            ClProveedorD objProvedorD = new ClProveedorD();
            int proveedor = objProvedorD.mtdVerificarProveedor(objProvedorE);
            return proveedor;
        }

    }
}