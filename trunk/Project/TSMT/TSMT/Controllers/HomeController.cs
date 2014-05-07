using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{

    public class HomeController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult DemoAjax()
        {
            return View();
        }
        public JsonResult ResultAjax(int id)
        {
            var ves = from r in db.Venues
                      where r.UniExamID == id
                      select new
                      {
                          value = r.VenueID,
                          name = r.Address
                      };
            return Json(ves, JsonRequestBehavior.AllowGet);
        }
        # region Homepage
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Blog()
        {
            return RedirectToAction("News", "Post");
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult FAQ()
        {
            return View();
        }

         public ActionResult Statistics()
        {
            ViewData["Exam"] = db.Examinations.ToList();
            return View();
        }
        #endregion
        # region LODGE & VENUE
        public ActionResult ViewLodge(int id)
        {
            Lodge lod = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lod);
        }
        public ActionResult ViewVenue(int id)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            return View(ve);
        }
        public ActionResult ViewPlaces(int id) // epId
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            return View(ep);
        }
        #endregion
        # region Charity
        public ActionResult ViewCharity()
        {
            ViewData["Exam"] = db.Examinations.ToList();
            var ce = db.ChairitiesExams.ToList();
            return View(ce);
        }
        public JsonResult getCharityWithCondition(int id)
        {
            var charity = from e in db.ChairitiesExams
                          where e.ExamID == id
                          select new
                          {
                              value = e.CharityExamID,
                              name = e.Charity.Name,
                          };
            return Json(charity, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ViewDetailCharity(int id)
        {
            var charityExam = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == id);

            return View(charityExam);
        }
        #endregion
        # region Volunteer
        public ActionResult Volunteer()
        {
            return View();
        }
        #endregion
        # region Sponsor
        public ActionResult Sponsor()
        {
            return View();
        }
        #endregion
		 #region Ajax
        public JsonResult ShowUniversity(int examId)
        {
            var university = from e in db.UniversitiesExaminations
                             where e.ExaminationID == examId
                          select new
                          {
                              value = e.UniExamID,
                              name = e.University.Name,
                          };
            return Json(university, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ShowCharity(int examId)
        {
            var charity = from e in db.ChairitiesExams
                          where e.ExamID == examId
                          select new
                          {
                              value = e.CharityExamID,
                              name = e.Charity.Name,
                          };
            return Json(charity, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Showvolunteer(int examId)
        {
            var volunteer = from e in db.ParticipantVolunteers
                          where e.ChairitiesExam.ExamID == examId
                          select new
                          {
                              value = e.VolunteerID,
                              name = e.Volunteer.Account.Profile.Lastname + " " + e.Volunteer.Account.Profile.Firstname,
                          };
            return Json(volunteer, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Showcandidate(int examId)
        {
            var candidate = from e in db.ExaminationsPapers
                            where e.ChairitiesExam.ExamID == examId
                            select new
                            {
                                value = e.ExamPaperID,
                                name = e.Candidate.Account.Profile.Lastname + " " + e.Candidate.Account.Profile.Firstname,
                            };
            return Json(candidate, JsonRequestBehavior.AllowGet);
        }
        #endregion
    }
}