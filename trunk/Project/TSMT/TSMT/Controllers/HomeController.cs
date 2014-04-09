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
                              desp = e.Description
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
        # region Admin

        #endregion
        #region Functions

        #endregion
        #region Filter Charity
        #endregion
        #region OLD
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
            pro.Gender = bool.Parse(f["gender"]);
            db.Profiles.Add(pro);
            db.SaveChanges();

            acc.ProfileID = pro.ProfileID;
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        public ActionResult LoginAs(string identity, string id)
        {
            string email = identity + id + "@gmail.com";
            Account acc = db.Accounts.SingleOrDefault(r => r.Email == email && r.Password == "123");
            Session["acc"] = acc;

            if (Session["fromUrl"] != null)
            {
                return Redirect(Session["fromUrl"].ToString());
            }
            return RedirectToAction("Index", identity);
        }
        #endregion

        public void autoGenerateStudent()
        {
            
        }
    }
}