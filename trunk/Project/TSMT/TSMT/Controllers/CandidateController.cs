using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TSMT.Controllers
{
    public class CandidateController : Controller
    {
        //
        // GET: /Candidate/

        public ActionResult ChooseCE()
        {
            return View("CEChoosen");
        }
        public ActionResult ViewCalendar()
        {
            return View("ScheduleOfCandidate");
        }

    }
}
