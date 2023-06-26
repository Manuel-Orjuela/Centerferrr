using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Logica
{
    public class ClRolL
    {
        public List<ClRolE> mtdListaRol()
        {
            ClRolD objRolD = new ClRolD();
            List<ClRolE> listaRol = objRolD.mtdListarRol();
            return listaRol;
        }
    }
}