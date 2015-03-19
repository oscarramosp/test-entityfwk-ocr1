using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestEntityFramework;

namespace Mvc4Test.Controllers
{
    public class CarrerasxEntidadController : Controller
    {
        //
        // GET: /CarrerasxEntidad/

        public ActionResult Carreras(Int32 entidadId)
        {
            FaqdeuContainer faqdeucont = new FaqdeuContainer();
            //CarrerasxEntidad carrerita = faqdeucont.CarrerasxEntidades.Single(cemp => cemp.EntidadId == EntidadId);
            List<CarrerasxEntidad> carreras = faqdeucont.CarrerasxEntidades.Where(cemp => cemp.EntidadId == entidadId).ToList();

            return View(carreras);
        }

    }
}
