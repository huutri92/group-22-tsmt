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
            return View();
        }

        #region ExamPaper
        public ActionResult ManageExamPaper()
        {
            Account acc = (Account)Session["acc"];
            Candidate can = db.Candidates.SingleOrDefault(r => r.AccountID == acc.AccountID);
            var examPapers = db.ExaminationsPapers.Where(r => r.CandidateID == can.CandidateID);
            return View(examPapers);
        }
        public ActionResult AddExamPaper()
        {
            ViewData["uniExams"] = db.UniversitiesExaminations.ToList();
            ViewData["venues"] = db.Venues.ToList();
            return View();
        }
        [HttpPost]
        public ActionResult AddExamPaper(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Candidate can = db.Candidates.SingleOrDefault(r => r.AccountID == acc.AccountID);

            ExaminationsPaper examPaper = new ExaminationsPaper();
            examPaper.CandidateID = can.CandidateID;
            examPaper.UniExamID = int.Parse(f["UniExamID"]);
            examPaper.VenueID = int.Parse(f["VenueID"]);
            db.ExaminationsPapers.Add(examPaper);
            db.SaveChanges();

            return RedirectToAction("ManageExamPaper");
        }
        public ActionResult DeleteExamPaper(int examPaperId)
        {
            ExaminationsPaper examPaper = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == examPaperId);
            db.ExaminationsPapers.Remove(examPaper);
            db.SaveChanges();
            return RedirectToAction("ManageExamPaper");
        }
        public ActionResult DetailsExamPaper(int examPaperId)
        {
            ExaminationsPaper examPaper = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == examPaperId);
            ViewData["joinIn"] = db.JoinsIns.SingleOrDefault(r => r.ExamPaperID == examPaperId);
            return View(examPaper);
        }
        #endregion
        #region JoinIn
        public ActionResult JoinIn(int examPaperId)
        {
            var ces = db.ChairitiesExams.ToList();
            ViewData["examPaperId"] = examPaperId;
            return View(ces);
        }
        [HttpPost]
        public ActionResult JoinIn(FormCollection f)
        {
            JoinsIn joinIn = new JoinsIn();
            joinIn.CharitiesExaminationsID = int.Parse(f["ceId"]);
            joinIn.ExamPaperID = int.Parse(f["examPaperId"]);
            db.JoinsIns.Add(joinIn);
            db.SaveChanges();

            return RedirectToAction("DetailsExamPaper", new { examPaperId = joinIn.ExamPaperID });
        }
        public ActionResult LeaveCE(int examPaperId)
        {
            JoinsIn joinIn = db.JoinsIns.SingleOrDefault(r => r.ExamPaperID == examPaperId);
            db.JoinsIns.Remove(joinIn);
            db.SaveChanges();
            return RedirectToAction("DetailsExamPaper", new { examPaperId = examPaperId });
        }
        #endregion
    }
}
