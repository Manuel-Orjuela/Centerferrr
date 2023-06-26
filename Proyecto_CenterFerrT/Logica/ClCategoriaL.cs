using Proyecto_CenterFerrT.Datos;
using Proyecto_CenterFerrT.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_CenterFerrT.Logica
{
    public class ClCategoriaL
    {
        public List<ClCategoriaE> mtdListar()
        {
            ClCategoriaD objCategoria = new ClCategoriaD();
            List<ClCategoriaE> listaCategoria = objCategoria.mtdListaCategoria();
            return listaCategoria;
        }


        public int mtdRegistrarCategoria(ClCategoriaE objCategoriaE)
        {
            ClCategoriaD objCategoriaD = new ClCategoriaD();
            int registrarCategoria = objCategoriaD.mtdRegistrarCategoria(objCategoriaE);
            return registrarCategoria;
        }

        public int mtdValidarCategoria(string categoria)
        {
            ClCategoriaD objCategoriaL = new ClCategoriaD();
            int validar = objCategoriaL.mtdValidarCategoria(categoria);
            return validar;
        }
       
    }
}