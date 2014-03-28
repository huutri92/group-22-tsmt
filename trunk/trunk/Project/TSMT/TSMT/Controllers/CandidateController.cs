using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{
    public class CandidateController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult Index()
        {
            //return View();
            return RedirectToAction("ManageExamPaper");
        }

        #region ExamPaper
        public ActionResult ManageExamPaper()
        {
            Account acc = (Account)Session["acc"];
            Candidate can = db.Candidates.FirstOrDefault(r => r.AccountID == acc.AccountID);
            var ep = db.ExaminationsPapers.Where(r => r.CandidateID == can.CandidateID);
            return View(ep);
        }
        public ActionResult AddExamPaper()
        {
            ViewData["uniExams"] = db.UniversitiesExaminations.ToList();
            ViewData["Exams"] = db.Examinations.ToList();
            ViewData["venues"] = db.Venues.ToList();
            return View();
        }
        [HttpPost]
        public ActionResult AddExamPaper(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Candidate can = db.Candidates.SingleOrDefault(r => r.AccountID == acc.AccountID);

            ExaminationsPaper ep = new ExaminationsPaper();
            ep.CandidateID = can.CandidateID;
            ep.UniExamID = int.Parse(f["uniName"]);
            ep.VenueID = int.Parse(f["venueID"]);
            db.ExaminationsPapers.Add(ep);
            db.SaveChanges();

            return RedirectToAction("ManageExamPaper");
        }

        public JsonResult getUniversity(int id)
        {
            var uni = from u in db.UniversitiesExaminations
                     where u.ExaminationID == id
                     select new
                     {
                         value = u.UniExamID,
                         name = u.University.Name
                     };
            return Json(uni, JsonRequestBehavior.AllowGet);
        }

        public JsonResult getVenue(int id)
        {
            var venue = from u in db.Venues
                      where u.UniExamID == id
                      select new
                      {
                          value = u.VenueID,
                          name = u.Address
                      };
            return Json(venue, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DeleteExamPaper(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.FirstOrDefault(r => r.ExamPaperID == id);
            db.ExaminationsPapers.Remove(ep);
            db.SaveChanges();
            return RedirectToAction("ManageExamPaper");
        }
        public ActionResult DetailsExamPaper(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            return View(ep);
        }
        #endregion
        #region JoinIn-CE
        public ActionResult JoinInCE(int id) // ep Id
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            var ces = db.ChairitiesExams.Where(r => r.ExamID == ep.UniversitiesExamination.ExaminationID);

            List<Lodge> lodges = new List<Lodge>();
            foreach (ChairitiesExam ce in ces)
            {
                foreach (Lodge l in ce.Lodges) { lodges.Add(l); }
            }

            ViewData["ep"] = ep;
            ViewData["lodges"] = lodges;
            return View(ces);
        }
        [HttpPost]
        public ActionResult JoinInCE(FormCollection f)
        {
            int epId = int.Parse(f["epId"]);
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == epId);

            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);

            ep.LodgeRegisteredID = lodgeId;
            ep.CharityExamID = lodge.CharityExamID;
            db.SaveChanges();
            return RedirectToAction("DetailsExamPaper", new { id = epId });
        }
        public ActionResult LeaveCE(int id) // Assumptions: ep dang ko thuoc group nao
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            ep.CharityExamID = null;
            db.SaveChanges();
            return RedirectToAction("DetailsExamPaper", new { id = id });
        }
        #endregion
        #region JoinIn-Group
        public ActionResult ViewGroup(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            ViewData["members"] = ep.Group.ExaminationsPapers;
            return View(ep);
        }
        public ActionResult CreateGroup(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            Group g = new Group();
            g.OwnerID = id;
            g.Quantity = 1;
            db.Groups.Add(g);

            ep.GroupID = g.GroupID;
            db.SaveChanges();

            return RedirectToAction("DetailsExamPaper", new { id = id });
        }
        public ActionResult JoinInGroup(int id)
        {
            ViewData["epId"] = id;
            return View();
        }
        [HttpPost]
        public ActionResult JoinInGroup(FormCollection f)
        {
            int epId = int.Parse(f["epId"]);
            int gId = int.Parse(f["gId"]);

            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == epId);
            Group g = db.Groups.SingleOrDefault(r => r.GroupID == gId);

            // kiem tra gioi tinh
            if (ep.Candidate.Account.Profile.Gender != g.Owner.Candidate.Account.Profile.Gender)
            {
                return RedirectToAction("JoinInGroup", new { id = epId });
            }

            ep.GroupID = gId;
            ++g.Quantity;
            db.SaveChanges();

            return RedirectToAction("ViewGroup", new { id = epId });
        }
        public ActionResult LeaveGroup(int id) // Permission: thanh vien cua nhom va ko pai la owner.
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            --ep.Group.Quantity;
            ep.GroupID = null;
            db.SaveChanges();

            return RedirectToAction("DetailsExamPaper", new { id = id });
        }
        public ActionResult DeleteGroup(int id) // Permission: owner.
        {
            ExaminationsPaper owner = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            Group g = owner.Group;

            // xoa lien ket cua cac thanh vien, ke ca owner doi voi nhom nay.
            foreach (ExaminationsPaper m in g.ExaminationsPapers) { m.GroupID = null; }

            // xoa nhom nay
            db.Groups.Remove(g);
            db.SaveChanges();

            return RedirectToAction("DetailsExamPaper", new { id = id });
        }
        #endregion
    }
}