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
         public ActionResult ViewStatistic()
         {
             var Candidate1 = db.ExaminationsPapers.Count(r => r.ChairitiesExam.ExamID == 1);
             var Candidate2 = db.ExaminationsPapers.Count(r => r.ChairitiesExam.ExamID == 2);
             var Candidate3 = db.ExaminationsPapers.Count(r => r.ChairitiesExam.ExamID == 3);
             ViewData["Candiate1"] = Candidate1;
             ViewData["Candiate2"] = Candidate2;
             ViewData["Candiate3"] = Candidate3;
             var Volunteer1 = db.ParticipantVolunteers.Count(r => r.ChairitiesExam.ExamID == 1);
             var Volunteer2 = db.ParticipantVolunteers.Count(r => r.ChairitiesExam.ExamID == 2);
             var Volunteer3 = db.ParticipantVolunteers.Count(r => r.ChairitiesExam.ExamID == 3);
             ViewData["Volunteer1"] = Volunteer1;
             ViewData["Volunteer2"] = Volunteer2;
             ViewData["Volunteer3"] = Volunteer3;
             var Charity1 = db.ChairitiesExams.Count(r => r.ExamID == 1);
             var Charity2 = db.ChairitiesExams.Count(r => r.ExamID == 2);
             var Charity3 = db.ChairitiesExams.Count(r => r.ExamID == 3);
             ViewData["Charity1"] = Charity1;
             ViewData["Charity2"] = Charity2;
             ViewData["Charity3"] = Charity3;
             var Car1 = db.Cars.Count(r => r.ChairitiesExam.ExamID == 1);
             var Car2 = db.Cars.Count(r => r.ChairitiesExam.ExamID == 2);
             var Car3 = db.Cars.Count(r => r.ChairitiesExam.ExamID == 3);
             ViewData["Car1"] = Car1;
             ViewData["Car2"] = Car2;
             ViewData["Car3"] = Car3;
             var Room1 = db.Rooms.Count(r => r.ChairitiesExam.ExamID == 1);
             var Room2 = db.Rooms.Count(r => r.ChairitiesExam.ExamID == 2);
             var Room3 = db.Rooms.Count(r => r.ChairitiesExam.ExamID == 3);
             ViewData["Room1"] = Room1;
             ViewData["Room2"] = Room2;
             ViewData["Room3"] = Room3;
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