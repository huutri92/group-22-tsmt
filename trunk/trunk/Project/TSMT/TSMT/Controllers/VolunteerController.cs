using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{
    [CheckAuth(4)]
    public class VolunteerController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult Index()
        {
            Account acc = (Account)Session["acc"];
            Volunteer vo = db.Volunteers.SingleOrDefault(r => r.AccountID == acc.AccountID);
            return View(vo);
        }
        public ActionResult JoinIn()
        {
            Account acc = (Account)Session["acc"];
            Volunteer vo = db.Volunteers.SingleOrDefault(r=>r.AccountID==acc.AccountID);
            var exams = db.Examinations.ToList();
            List<Examination> es = new List<Examination>();
            bool alreadyIn = false;
            foreach (Examination e in exams)
            {
                alreadyIn = false;
                foreach (ParticipantVolunteer pv in vo.ParticipantVolunteers)
                {
                    if (pv.ChairitiesExam.ExamID == e.ExaminationID) // already join this exam
                    {
                        alreadyIn = true;
                        break;
                    }
                }
                if (!alreadyIn)
                {
                    es.Add(e);
                }
            }
            return View(es);
        }
        public ActionResult ManagePost()
        {
            Account acc = (Account)Session["acc"];
            var ar = db.Articles.Where(r=>r.CreatedBy==acc.AccountID).ToList();
            return View(ar);
        }
        [HttpPost]
        public ActionResult JoinIn(FormCollection f)
        {
            int ceid = int.Parse(f["ceId"]);
            var exam = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceid);
            var begin = exam.Examination.BeginDate;
            DateTime now = System.DateTime.Now;
            var equal = new TimeSpan();
            equal = now - begin;
            double totalMilliseconds = equal.TotalMilliseconds;
            if (Math.Abs((totalMilliseconds / 86400000)) > 3)
            {
                Account acc = (Account) Session["acc"];
                Volunteer vo = db.Volunteers.SingleOrDefault(r => r.AccountID == acc.AccountID);
                ParticipantVolunteer pe = new ParticipantVolunteer();
                pe.VolunteerID = vo.VolunteerID;
                pe.CharityExamID = int.Parse(f["ceId"]);
                pe.IsApproved = false;
                db.ParticipantVolunteers.Add(pe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return RedirectToAction("ErrorPage");
        }
        [HttpPost]
        public JsonResult getCharityName(int id) //exId
        {
            var CE = from r in db.ChairitiesExams
                     where r.ExamID == id
                     select new
                     {
                         value = r.CharityExamID,
                         name = r.Charity.Name
                     };
            return Json(CE);
        }
        public ActionResult LeaveCE(int id) // peId
        {
            ParticipantVolunteer pe = db.ParticipantVolunteers.SingleOrDefault(r => r.ParticipantVolunteerID == id);
            db.ParticipantVolunteers.Remove(pe);
            db.SaveChanges();
            return RedirectToAction("Index","Volunteer");
        }
        public ActionResult ViewDetails(int id) // peId
        {
            ParticipantVolunteer pe = db.ParticipantVolunteers.SingleOrDefault(r => r.ParticipantVolunteerID == id);
            ScheduleExam sc = pe.ChairitiesExam.Examination.ScheduleExams.FirstOrDefault();
            
            return View(pe);
        }
        [HttpPost]
        public JsonResult ShowCeLodge(int ceId)
        {
            var lod = from r in db.Lodges
                      where r.CharityExamID == ceId && r.IsApproved
                      select new
                      {
                          value = r.LodgeID,
                          address = r.Address,
                      };
            return Json(lod);
        }
        //public ActionResult ViewRoutes()
        //{
        //    return View();
        //}
        public ActionResult ViewRountes(int id)
        {
            //SchedulesVolunteer schedulesVolunteer = db.SchedulesVolunteers.FirstOrDefault(s => s.ScheduleVolunteerID == scheduleId);
            //if (schedulesVolunteer != null)
            //{
            //    ViewData["StarEndPoint"] = schedulesVolunteer.StartEndPoint;
            //    ViewData["WayPoint"] = schedulesVolunteer.WayPoint;
            //    ViewData["ScheduleId"] = scheduleId;
            //    ViewData["WayPointEdit"] = "";
            //}

            ParticipantVolunteer schedulesVolunteer = db.ParticipantVolunteers.FirstOrDefault(s => s.ParticipantVolunteerID == id);
            if (schedulesVolunteer != null)
            {
                var endPoint = schedulesVolunteer.ExaminationsPaper.Venue.Address;
                var startPoint = schedulesVolunteer.ExaminationsPaper.Lodge.Address;
                ViewData["StarEndPoint"] = startPoint + ";" + endPoint;
                ViewData["WayPoint"] = schedulesVolunteer.WayPoints;
                ViewData["ScheduleId"] = id;
                ViewData["WayPointEdit"] = "";
                Lodge lodge = new Lodge();
                lodge =
                    db.Lodges.FirstOrDefault(l => l.LodgeID == schedulesVolunteer.ExaminationsPaper.LodgeRegisteredID);
                ViewData["StartPlace"] = lodge.Address;
                ViewData["EndPlace"] = schedulesVolunteer.ExaminationsPaper.Venue.Address;
            }
            return View("DisplayRouteVolunteer");
        }
        [HttpPost]
        public JsonResult SaveRoute(int scheduleId, string waypoints)
        {
            //SchedulesVolunteer schedulesVolunteer = db.SchedulesVolunteers.FirstOrDefault(s => s.ScheduleVolunteerID == scheduleId);

            //schedulesVolunteer.WayPoint = waypoints;
            //db.SaveChanges();
            //ViewData["WayPoint"] = schedulesVolunteer.WayPoint;
            ParticipantVolunteer schedulesVolunteer = db.ParticipantVolunteers.FirstOrDefault(s => s.ParticipantVolunteerID == scheduleId);

            schedulesVolunteer.WayPoints = waypoints;
            db.SaveChanges();
            ViewData["WayPoint"] = schedulesVolunteer.WayPoints;
            return Json(new { success = true });
        }
    }
}