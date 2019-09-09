using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CapaLogica;
using CapaEntidades;
namespace Capa_Presentacion.Controllers
{
    public class InicioController : Controller
    {
        // GET: Inicio
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ListaProductos(Int16 idmarca) {
            try{
                return View(negProducto.Instancia.ListarProductos(idmarca));
            }catch (Exception e){
                return View();
            }
        }
    }
}