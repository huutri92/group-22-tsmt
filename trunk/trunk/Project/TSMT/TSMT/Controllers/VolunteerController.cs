using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{

    public class VolunteerController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult Index()
        {
            Account acc = (Account)Session["acc"];
            Volunteer vo = db.Volunteers.SingleOrDefault(r => r.AccountID == acc.AccountID);
            return View(vo);
        }

        //[CheckAuth("/Account/Login", 4, "/")]
        public ActionResult JoinIn()
        {
            var exams = db.Examinations.ToList();
            return View(exams);
        }
        [HttpPost]
        public ActionResult JoinIn(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Volunteer vo = db.Volunteers.SingleOrDefault(r => r.AccountID == acc.AccountID);
            int ceId = int.Parse(f["ceId"]);
            vo.CharityExamID = ceId;
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        public JsonResult getCharityName(int id)//exId
        {
            var CE = from r in db.ChairitiesExams
                     where r.ExamID == id
                     select new
                     {
                         value = r.CharityExamID,
                         name = r.CharityExamName
                     };
            return Json(CE, JsonRequestBehavior.AllowGet);
        }
        public ActionResult LeaveCE()
        {
            Account acc = (Account)Session["acc"];
            Volunteer vo = db.Volunteers.SingleOrDefault(r => r.AccountID == acc.AccountID);
            vo.CharityExamID = null;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult ViewSchedule()
        {
            return View();
        }
        public ActionResult ViewRoutes()
        {
            return View();
        }

        public ActionResult DisplayRoute(int scheduleId = 2)
        {
            SchedulesVolunteer schedulesVolunteer = db.SchedulesVolunteers.FirstOrDefault(s => s.ScheduleVolunteerID == scheduleId);
            if (schedulesVolunteer != null)
            {
                ViewData["StarEndPoint"] = schedulesVolunteer.StartEndPoint;
                ViewData["WayPoint"] = schedulesVolunteer.WayPoint;
                ViewData["ScheduleId"] = scheduleId;
                ViewData["WayPointEdit"] = "";
            }

            return View();
        }

        [HttpPost]
        public JsonResult SaveRoute(int scheduleId, string waypoints)
        {
            SchedulesVolunteer schedulesVolunteer = db.SchedulesVolunteers.FirstOrDefault(s => s.ScheduleVolunteerID == scheduleId);

            schedulesVolunteer.WayPoint = waypoints;
            db.SaveChanges();
            ViewData["WayPoint"] = schedulesVolunteer.WayPoint;
            return Json(new { success = true });
        }
    }
}