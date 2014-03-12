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

        [CheckAuth(5)]
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
        [CheckAuth(5)]
        public ActionResult ManageUniversity()
        {
            var unis = db.Universities.ToList();
            return View(unis);
        }
        [CheckAuth(5)]
        public ActionResult AddUniversity()
        {
            return View();
        }
        [HttpPost]
        [CheckAuth(5)]
        public ActionResult AddUniversity(FormCollection f)
        {
            University uni = new University();
            uni.Name = f["Name"];
            uni.Address = f["Address"];
            uni.UniversityCode = f["UniversityCode"];
            uni.Website = f["Website"];
            uni.Phone = int.Parse(f["Phone"]);
            uni.IsRemovable = true;

            db.Universities.Add(uni);
            db.SaveChanges();

            return RedirectToAction("ManageUniversity");
        }
        [CheckAuth(5)]
        public ActionResult EditUniversity(int id)
        {
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == id);
            return View(uni);
        }
        [HttpPost]
        [CheckAuth(5)]
        public ActionResult EditUniversity(FormCollection f)
        {
            int uniId = int.Parse(f["uniId"]);
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == uniId);
            uni.Name = f["Name"];
            uni.Address = f["Address"];
            uni.UniversityCode = f["UniversityCode"];
            uni.Website = f["Website"];
            uni.Phone = int.Parse(f["Phone"]);
            db.SaveChanges();
            return RedirectToAction("ManageUniversity");
        }
        [CheckAuth(5)]
        public ActionResult DeleteUniversity(int id)
        {
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == id);
            if (!uni.IsRemovable)
            {
                // redirect toi trang bao loi ko cho delete!
                return RedirectToAction("ManageUniversity");
            }
            db.Universities.Remove(uni);
            db.SaveChanges();
            return RedirectToAction("ManageUniversity");
        }
        #endregion
        #region EXAMINATIONS
        [CheckAuth(5)]
        public ActionResult ManageExam()
        {
            var exams = db.Examinations.ToList();
            return View(exams);
        }
        [CheckAuth(5)]
        public ActionResult AddExam()
        {
            return View();
        }
        [HttpPost]
        [CheckAuth(5)]
        public ActionResult AddExam(FormCollection f)
        {
            Examination exam = new Examination();
            exam.Name = f["Name"];
            exam.BeginDate = DateTime.Parse(f["BeginDate"]);
            exam.EndDate = DateTime.Parse(f["EndDate"]);
            exam.IsRemovable = true;
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
        [CheckAuth(5)]
        public ActionResult DeleteExam(int id)
        {
            Examination exam = db.Examinations.SingleOrDefault(r => r.ExaminationID == id);

            if (!exam.IsRemovable)
            {
                // redirect toi trang bao loi ko cho delete!
                return RedirectToAction("ManageExam");
            }

            var scheduleExams = db.DetailsScheduleExams.Where(r => r.ExamID == id);
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
        [CheckAuth(5)]
        public ActionResult ManageScheduleExam(int id)
        {
            var scheduleExams = db.DetailsScheduleExams.Where(r => r.ExamID == id);
            return View(scheduleExams);
        }
        [CheckAuth(5)]
        public ActionResult EditScheduleExam(int id)
        {
            DetailsScheduleExam scheduleExam = db.DetailsScheduleExams.SingleOrDefault(r => r.DetailsScheduleExamID == id);
            return View(scheduleExam);
        }
        [HttpPost]
        [CheckAuth(5)]
        public ActionResult EditScheduleExam(FormCollection f)
        {
            int scheduleExamId = int.Parse(f["id"]);
            DetailsScheduleExam scheduleExam = db.DetailsScheduleExams.SingleOrDefault(r => r.DetailsScheduleExamID == scheduleExamId);
            scheduleExam.BeginHour = DateTime.Parse(f["BeginHour"]);
            scheduleExam.EndHour = DateTime.Parse(f["EndHour"]);
            db.SaveChanges();
            return RedirectToAction("ManageScheduleExam", new { examId = scheduleExam.ExamID });
        }
        #endregion
        #region UNI-EXAMS
        [CheckAuth(5)]
        public ActionResult ManageUniversityExam()
        {
            var uniExams = db.UniversitiesExaminations.ToList();
            return View(uniExams);
        }
        [CheckAuth(5)]
        public ActionResult AddUniversityExam()
        {
            ViewData["exams"] = db.Examinations.ToList();
            ViewData["unis"] = db.Universities.ToList();
            return View();
        }
        [HttpPost]
        [CheckAuth(5)]
        public ActionResult AddUniversityExam(FormCollection f)
        {
            UniversitiesExamination ue = new UniversitiesExamination();
            ue.UniversityID = int.Parse(f["UniversityID"]);
            ue.ExaminationID = int.Parse(f["ExaminationID"]);
            ue.IsRemovable = true;
            db.UniversitiesExaminations.Add(ue);
            db.SaveChanges();

            return RedirectToAction("ManageUniversityExam");
        }
        [CheckAuth(5)]
        public ActionResult DeleteUniversityExam(int id)
        {
            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == id);

            if (!ue.IsRemovable)
            {
                //redirect toi trang bao loi ko cho delete!
                return RedirectToAction("ManageUniversityExam");
            }

            var ves = db.Venues.Where(r => r.UniExamID == id);
            foreach (Venue ve in ves)
            {
                db.Venues.Remove(ve);
            }
            db.UniversitiesExaminations.Remove(ue);
            return RedirectToAction("ManageUniversityExam");
        }
        #endregion
        #region VENUES
        [CheckAuth(5)]
        public ActionResult ManageVenue(int id)
        {
            var ves = db.Venues.Where(r => r.UniExamID == id);
            ViewData["ueId"] = id;
            return View(ves);
        }
        [CheckAuth(5)]
        public ActionResult AddVenue(int id)
        {
            ViewData["ueId"] = id;
            return View();
        }
        [HttpPost]
        public ActionResult AddVenue(FormCollection f)
        {
            Venue ve = new Venue();
            ve.Address = f["Address"];
            ve.UniExamID = int.Parse(f["ueId"]);
            ve.IsRemovable = true;
            db.Venues.Add(ve);

            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == ve.UniExamID);
            ue.IsRemovable = false;

            db.SaveChanges();

            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }
        [CheckAuth(5)]
        public ActionResult EditVenue(int id)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            return View(ve);
        }
        [HttpPost]
        [CheckAuth(5)]
        public ActionResult EditVenue(FormCollection f)
        {
            int veId = int.Parse(f["veId"]);
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == veId);
            ve.Address = f["Address"];
            db.SaveChanges();

            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }
        [CheckAuth(5)]
        public ActionResult DeleteVenue(int id)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            int ueId = ve.UniExamID;

            if (!ve.IsRemovable)
            {
                //redirect toi trang bao loi ko cho delete!
                return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
            }

            ve.UniversitiesExamination.IsRemovable = true;
            db.Venues.Remove(ve);
            db.SaveChanges();
            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }
        #endregion
    }
}