using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DemoInterface.Controllers
{
    public class CandidateController : Controller
    {
        //
        // GET: /Candidate/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Lodge()
        {
            return View();
        }
    }
}
