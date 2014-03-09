using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{
    public class AdminController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Index()
        {
            return View();
        }

        #region ACCOUNTS
        #endregion
        #region CATEGORIES
        #endregion
        #region POSTS
        #endregion
        #region UNIVERSITIES
        public ActionResult ManageUniversity()
        {
            var unis = db.Universities.ToList();
            return View(unis);
        } 
        public ActionResult AddUniversity()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUniversity(FormCollection f)
        {
            University uni = new University();
            uni.Name = f["Name"];
            uni.Address = f["Address"];
            uni.UniversityCode = f["UniversityCode"];
            uni.Website = f["Website"];
            uni.Phone = int.Parse(f["Phone"]);

            db.Universities.Add(uni);
            db.SaveChanges();

            return RedirectToAction("ManageUniversity");
        }
        public ActionResult DeleteUni(int uniId)
        {
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == uniId);
            db.Universities.Remove(uni);
            db.SaveChanges();
            return RedirectToAction("ManageUniversity");
        }
        #endregion
        #region EXAMINATIONS
        public ActionResult ManageExam()
        {
            var exams = db.Examinations.ToList();
            return View(exams);
        }
        public ActionResult AddExam()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddExam(FormCollection f)
        {
            Examination exam = new Examination();
            exam.Name = f["Name"];
            exam.BeginDate = DateTime.Parse(f["BeginDate"]);
            exam.EndDate = DateTime.Parse(f["EndDate"]);
            db.Examinations.Add(exam);

            for (DateTime date = exam.BeginDate; date <= exam.EndDate; date = date.AddDays(1))
            {
                DetailsScheduleExam scheduleExam = new DetailsScheduleExam();
                scheduleExam.Day = date;
                scheduleExam.BeginHour = new DateTime(date.Year, date.Month, date.Day, 7, 0, 0);
                scheduleExam.EndHour = new DateTime(date.Year, date.Month, date.Day, 16, 0, 0);
                db.DetailsScheduleExams.Add(scheduleExam);
            }

            db.SaveChanges();

            return RedirectToAction("ManageExam");
        }
        public ActionResult DeleteExam(int examId)
        {
            Examination exam = db.Examinations.SingleOrDefault(r => r.ExaminationID == examId);

            var scheduleExams = db.DetailsScheduleExams.Where(r => r.ExamID == examId);
            foreach (var scheduleExam in scheduleExams)
            {
                db.DetailsScheduleExams.Remove(scheduleExam);
            }

            db.Examinations.Remove(exam);
            db.SaveChanges();
            return RedirectToAction("ManageExam");
        }
        #endregion
        #region SCHEDULE-EXAMS
        public ActionResult ManageScheduleExam(int examId)
        {
            var scheduleExams = db.DetailsScheduleExams.Where(r => r.ExamID == examId);
            return View(scheduleExams);
        }
        public ActionResult EditScheduleExam(int scheduleExamId)
        {
            DetailsScheduleExam scheduleExam = db.DetailsScheduleExams.SingleOrDefault(r => r.DetailsScheduleExamID == scheduleExamId);
            return View(scheduleExam);
        }
        [HttpPost]
        public ActionResult EditScheduleExam(FormCollection f)
        {
            int scheduleExamId = int.Parse(f["scheduleExamId"]);
            DetailsScheduleExam scheduleExam = db.DetailsScheduleExams.SingleOrDefault(r => r.DetailsScheduleExamID == scheduleExamId);
            scheduleExam.BeginHour = DateTime.Parse(f["BeginHour"]);
            scheduleExam.EndHour = DateTime.Parse(f["EndHour"]);
            db.SaveChanges();
            return RedirectToAction("ManageScheduleExam", new { examId = scheduleExam.ExamID });
        }
        #endregion
        #region UNI-EXAMS
        public ActionResult ManageUniversityExam()
        {
            var uniExams = db.UniversitiesExaminations.ToList();
            return View(uniExams);
        }
        public ActionResult AddUniverExam()
        {
            ViewData["unis"] = db.Universities.ToList();
            ViewData["exams"] = db.Examinations.ToList();
            return View();
        }
        [HttpPost]
        public ActionResult AddUniverExam(FormCollection f)
        {
            UniversitiesExamination ue = new UniversitiesExamination();
            ue.UniversityID = int.Parse(f["UniversityID"]);
            ue.ExaminationID = int.Parse(f["ExaminationID"]);
            db.UniversitiesExaminations.Add(ue);
            db.SaveChanges();

            return RedirectToAction("ManageUniversityExam");
        }
        public ActionResult DetailsUE(int ueId)
        {
            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == ueId);
            return View(ue);
        }
        #endregion
        #region VENUES
        public ActionResult ManageVenue(int ueId)
        {
            var ves = db.Venues.Where(r => r.UniExamID == ueId);
            ViewData["ueId"] = ueId;
            return View(ves);
        }
        public ActionResult AddVenue(int ueId)
        {
            ViewData["ueId"] = ueId;
            return View();
        }
        [HttpPost]
        public ActionResult AddVenue(FormCollection f)
        {
            Venue ve = new Venue();
            ve.Address = f["Address"];
            ve.UniExamID = int.Parse(f["ueId"]);
            db.Venues.Add(ve);
            db.SaveChanges();

            return RedirectToAction("ManageVenue", new { ueId = ve.UniExamID });
        }
        public ActionResult DeleteVenue(int veId)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == veId);
            int ueId = ve.UniExamID;
            db.Venues.Remove(ve);
            db.SaveChanges();
            return RedirectToAction("ManageVenue", new { ueId = ve.UniExamID });
        }
        #endregion
    }
}