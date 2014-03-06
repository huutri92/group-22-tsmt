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

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index");
        }

        public ActionResult Entrance()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Entrance(FormCollection f)
        {
            string email = f["email"];
            string password = f["password"];
            Account acc = db.Accounts.SingleOrDefault(r => r.Email == email && r.Password == password);
            if (acc == null) return View();

            Session["acc"] = acc;
            return RedirectToAction("Index");
        }

        public ActionResult Registration()
        {
            ViewData["provinces"] = db.Provinces.ToList();
            ViewData["districts"] = db.Districts.ToList();
            ViewData["roles"] = db.Roles.ToList();
            return View();
        }

        [HttpPost]
        public ActionResult Registration(FormCollection f)
        {
            Account acc = new Account();
            acc.Email = f["email"];
            acc.Password = f["password"];
            acc.IsActive = true;
            acc.RoleID = int.Parse(f["role"]);
            db.Accounts.Add(acc);
            db.SaveChanges();

            switch (acc.RoleID)
            {
                case 1: Candidate can = new Candidate();
                    can.AccountID = acc.AccountID;
                    can.HighSchoolName = f["highschool"];
                    db.Candidates.Add(can);
                    break;
                case 2: Charity cha = new Charity();
                    cha.AccountID = acc.AccountID;
                    db.Charities.Add(cha);
                    break;
                case 3: Sponsor sp = new Sponsor();
                    sp.AccountID = acc.AccountID;
                    db.Sponsors.Add(sp);
                    break;
                case 4: Volunteer vo = new Volunteer();
                    vo.AccountID = acc.AccountID;
                    vo.JobName = f["job"];
                    vo.Description = f["des"];
                    db.Volunteers.Add(vo);
                    break;
            }
            db.SaveChanges();

            Profile pro = new Profile();
            pro.AccountID = acc.AccountID;
            pro.Firstname = f["fname"];
            pro.Lastname = f["lname"];
            pro.IsFemale = bool.Parse(f["gender"]);
            db.Profiles.Add(pro);
            db.SaveChanges();

            acc.ProfileID = pro.ProfileID;
            db.SaveChanges();

            return RedirectToAction("Entrance");
        }
    }
}