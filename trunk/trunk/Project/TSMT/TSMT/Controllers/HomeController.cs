using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;
namespace DemoInterface2.Controllers
{    
       
    public class HomeController : Controller
    {
        TSMTEntities db = new TSMTEntities();
        
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Entrance()
        {
            return View();
        }


        public ActionResult Registration()
        {
            var getAllProvinces = db.Provinces.ToList();
            var getAllDistricts = db.Districts.ToList();
            var getAllRoles = db.Roles.ToList();
            ViewData["getAllProvinces"] = getAllProvinces;
            ViewData["getAllDistricts"] = getAllDistricts;
            ViewData["getAllRoles"] = getAllRoles;
            return View();
        }

        [HttpPost]
        public ActionResult Registration(RegistrationModel model)
        {
            RegistrationModel _regestration = new RegistrationModel();
            _regestration.AddAccount(model);
            return RedirectToAction("Registration");
        }


        public ActionResult RegistrationWithRazor()
        {
            return View();
        }

    }
}
