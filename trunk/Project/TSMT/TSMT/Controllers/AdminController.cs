using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{
    [CheckAuth(5)]
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
        public ActionResult ManageAccount()
        {
            return View(db.Profiles.ToList());
        }
        public ActionResult ViewDetailAccount()
        {
            return View();
        }
        public ActionResult EditAccount()
        {
            return View();
        }
        
        #endregion
        #region CATEGORIES
        public ActionResult ManageCategory()
        {
            return View(db.Categories.ToList());
        }
        #endregion
        #region POSTS
        public ActionResult ManagePost()
        {
            //return View();
            return RedirectToAction("ManagePost", "Post");
        }
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
            uni.IsRemovable = true;

            db.Universities.Add(uni);
            db.SaveChanges();

            return RedirectToAction("ManageUniversity");
        }
        
        public ActionResult EditUniversity(int id)
        {
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == id);
            return View(uni);
        }
        [HttpPost]        
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
            exam.IsRemovable = true;
            db.Examinations.Add(exam);

            for (DateTime date = exam.BeginDate; date <= exam.EndDate; date = date.AddDays(1))
            {
                ScheduleExam scheduleExam = new ScheduleExam();
                scheduleExam.Day = date;
                scheduleExam.BeginHour = new DateTime(date.Year, date.Month, date.Day, 7, 0, 0);
                scheduleExam.EndHour = new DateTime(date.Year, date.Month, date.Day, 16, 0, 0);
                db.ScheduleExams.Add(scheduleExam);
            }

            db.SaveChanges();

            return RedirectToAction("ManageExam");
        }
        
        public ActionResult DeleteExam(int id)
        {
            Examination exam = db.Examinations.SingleOrDefault(r => r.ExaminationID == id);

            if (!exam.IsRemovable)
            {
                // redirect toi trang bao loi ko cho delete!
                return RedirectToAction("ManageExam");
            }

            var scheduleExams = db.ScheduleExams.Where(r => r.ExamID == id);
            foreach (var scheduleExam in scheduleExams)
            {
                db.ScheduleExams.Remove(scheduleExam);
            }

            db.Examinations.Remove(exam);
            db.SaveChanges();
            return RedirectToAction("ManageExam");
        }
        #endregion
        #region SCHEDULE-EXAMS
        
        public ActionResult ManageScheduleExam(int id)
        {
            var scheduleExams = db.ScheduleExams.Where(r => r.ExamID == id);
            return View(scheduleExams);
        }
        
        public ActionResult EditScheduleExam(int id)
        {
            ScheduleExam scheduleExam = db.ScheduleExams.SingleOrDefault(r => r.ScheduleExamID == id);
            return View(scheduleExam);
        }
        [HttpPost]
        
        public ActionResult EditScheduleExam(FormCollection f)
        {
            int scheduleExamId = int.Parse(f["id"]);
            ScheduleExam scheduleExam = db.ScheduleExams.SingleOrDefault(r => r.ScheduleExamID == scheduleExamId);
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
        
        public ActionResult AddUniversityExam()
        {
            ViewData["exams"] = db.Examinations.ToList();
            ViewData["unis"] = db.Universities.ToList();
            return View();
        }
        [HttpPost]
        
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
        public ActionResult ManageVenue(int id) // ueId
        {
            var ves = db.Venues.Where(r => r.UniExamID == id);
            ViewData["ueId"] = id;
            return View(ves);
        }
        public ActionResult ViewVenue(int id) // ueId
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            return View(ve);
        }
        public ActionResult AddVenue(int id)
        {
            ViewData["ueId"] = id;
            return View();
        }
        [HttpPost]
        public ActionResult AddVenue(FormCollection f)
        {
            Venue ve = new Venue();
            ve.UniExamID = int.Parse(f["ueId"]);
            ve.Longitude = f["Longitude"];
            ve.Latitude = f["Latitude"];
            ve.Address = f["Address"];
            ve.IsRemovable = true;
            db.Venues.Add(ve);

            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == ve.UniExamID);
            ue.IsRemovable = false;

            db.SaveChanges();

            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }

        public ActionResult EditVenue(int id)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            return View(ve);
        }
        [HttpPost]
        public ActionResult EditVenue(FormCollection f)
        {
            int veId = int.Parse(f["veId"]);
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == veId);
            ve.Longitude = f["Longitude"];
            ve.Latitude = f["Latitude"];
            ve.Address = f["Address"];
            db.SaveChanges();

            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }

        public ActionResult DeleteVenue(int id)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            //int ueId = ve.UniExamID;

            //if (!ve.IsRemovable)
            //{
            //    //redirect toi trang bao loi ko cho delete!
            //    return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
            //}

            //if (db.Venues.Count(r => r.UniExamID == ueId) < 2) { ve.UniversitiesExamination.IsRemovable = true; }
            //db.Venues.Remove(ve);
            //db.SaveChanges();
            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }
        #endregion

        #region Statistics
        public ActionResult Statistics()
        {
            return View();
        }


        #endregion
    }
}