using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestEntityFramework;

namespace Mvc4Test.Controllers
{
    public class EvaluacionesController : Controller
    {
        [HttpGet]
        public ActionResult Evaluar(Int32 carreraId, Int32 entidadId, Int32 profesorId)
        {
            FaqdeuContainer faqdeucont = new FaqdeuContainer();
            ProfesoresxCarreraxEntidad profesor = faqdeucont.ProfesoresxCarreraesxEntidades.Single(pcemp => pcemp.CarrerasxEntidadCarreraId == carreraId && pcemp.CarrerasxEntidadEntidadId == entidadId && pcemp.ProfesorId == profesorId);
            Formulario form = faqdeucont.Formularios.First(frm => frm.Id == 1);
            Evaluacion eval = new Evaluacion();
            eval.ProfesoresxCarreraxEntidad = profesor;
            eval.Formulario = form;

            Respuesta resp;
            foreach (Pregunta preg in form.Preguntas)
            {
                resp = new Respuesta();
                resp.Evaluacion = eval;
                resp.Pregunta = preg;
                eval.Respuestas.Add(resp);
            }

            return View(eval);
        }

    }
}
