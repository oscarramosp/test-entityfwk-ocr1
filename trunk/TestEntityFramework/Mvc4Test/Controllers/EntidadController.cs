using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestEntityFramework;

namespace Mvc4Test.Controllers
{
    public class EntidadController : Controller
    {
        //
        // GET: /Entidad/

        public ActionResult Index()
        {
            FaqdeuContainer faqdeucont = new FaqdeuContainer();
            List<Entidad> entidades = faqdeucont.Entidades.ToList();

            return View(entidades);
        }

    }
}
