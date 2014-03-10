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
        public ActionResult JoinIn()
        {
            var ces = db.ChairitiesExams.ToList();
            return View(ces);
        }
        [HttpPost]
        public ActionResult JoinIn(FormCollection f)
        {
            int ceId = int.Parse(f["ceId"]);

            Account acc = (Account)Session["acc"];
            Volunteer vo = db.Volunteers.SingleOrDefault(r => r.AccountID == acc.AccountID);

            vo.CharityExamID = ceId;
            db.SaveChanges();
            return RedirectToAction("Index");
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
    }
}