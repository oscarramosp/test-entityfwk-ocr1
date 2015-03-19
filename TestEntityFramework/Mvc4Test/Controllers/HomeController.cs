using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Mvc4Test.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            ViewData["Paises"] = new List<string>()
            {
                "Perú",
                "UK",
                "US",
                "Canada"
            };

            return View();
        }

        public string Test(string s)
        {
            return "Esto es una prueba de " + s;
        }

    }
}
