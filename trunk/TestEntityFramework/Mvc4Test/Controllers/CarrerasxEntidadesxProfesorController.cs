using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestEntityFramework;

namespace Mvc4Test.Controllers
{
    public class CarrerasxEntidadesxProfesorController : Controller
    {
        public ActionResult Profesores(Int32 carreraId, Int32 entidadId)
        {
            FaqdeuContainer faqdeucont = new FaqdeuContainer();
            List<ProfesoresxCarreraxEntidad> profesores = faqdeucont.ProfesoresxCarreraesxEntidades.Where(pcemp => pcemp.CarrerasxEntidadCarreraId == carreraId && pcemp.CarrerasxEntidadEntidadId == entidadId).ToList();

            return View(profesores);
        }

    }
}
