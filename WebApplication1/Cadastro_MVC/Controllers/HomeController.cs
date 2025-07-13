using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cadastro_MVC.Controllers
{
    public class HomeController : Controller
    {
        private MeuBanco01 db = new MeuBanco01();
        public ActionResult Index()
        {
            ViewBag.QtdeDepartamentos = db.Departamento.Count();
            ViewBag.QtdeFuncionarios = db.Funcionarios.Count();
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}