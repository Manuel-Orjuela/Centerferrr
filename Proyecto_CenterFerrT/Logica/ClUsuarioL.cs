using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Claims;
using System.Web;

namespace Proyecto_CenterFerrT.Logica
{
    public class ClUsuarioL
    {
        public ClUsuarioE mtdDatosLogin(string documento, string clave)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            ClUsuarioE objDatos = objUsuarioD.mtdLogin(documento, clave);
            return objDatos;
        }

        public int mtdRegistrarUsuario(ClUsuarioE objDatos)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            int registro = objUsuarioD.mtdRegistrarUsuario(objDatos);
            return registro;
        }
        public List<ClUsuarioE> mtdListarUsuario()
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            List<ClUsuarioE> listaUsuario = objUsuarioD.mtdListarUsuarios();
            return listaUsuario;
        }
        public List<ClUsuarioE> mtdBusquedaPorDocumento(ClUsuarioE objUsuarioE)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            List<ClUsuarioE> listaD = objUsuarioD.mtdBuscarPorDocumento(objUsuarioE);
            return listaD;
        }
        public int mtdVerificarUsuario(ClUsuarioE objUsuarioE)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            int usuario = objUsuarioD.mtdVerificarUsuario(objUsuarioE);
            return usuario;
        }
        public int mtdActualizarUsuario(ClUsuarioE objUsuarioE, int id)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            int actualizar = objUsuarioD.mtdActualizarDatos(objUsuarioE, id);
            return actualizar;

        }
        public ClUsuarioE mtdListarDocumento(string nombre)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            ClUsuarioE objUsuarioE = objUsuarioD.mtdListarDocumento(nombre);
            return objUsuarioE;
        }
    }
}