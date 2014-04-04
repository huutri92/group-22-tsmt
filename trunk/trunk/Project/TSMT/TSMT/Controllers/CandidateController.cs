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
        public ActionResult DetailsExamPaper(int id) // epID
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            if (ep.GroupID == null) // has no group --> can ask, or being invited with a Group
            {
                Group g = new Group();
                List<Group> actives = new List<Group>();
                List<Group> receives = new List<Group>();

                foreach (GroupRequest gr in db.GroupRequests.Where(r => r.ActiveID == id))
                {
                    g = db.Groups.SingleOrDefault(r => r.OwnerID == gr.ReceiveID);
                    actives.Add(g);
                }

                foreach (GroupRequest gr in db.GroupRequests.Where(r => r.ReceiveID == id))
                {
                    g = db.Groups.SingleOrDefault(r => r.OwnerID == gr.ActiveID);
                    receives.Add(g);
                }

                ViewData["actives"] = actives;
                ViewData["receives"] = receives;
            }
            else // has group --> can invite, or being asked with a Candidate
            {
                ExaminationsPaper e = new ExaminationsPaper();
                List<ExaminationsPaper> actives = new List<ExaminationsPaper>();
                List<ExaminationsPaper> receives = new List<ExaminationsPaper>();

                foreach (GroupRequest gr in db.GroupRequests.Where(r => r.ActiveID == ep.Group.OwnerID))
                {
                    e = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == gr.ReceiveID);
                    actives.Add(e);
                }

                foreach (GroupRequest gr in db.GroupRequests.Where(r => r.ReceiveID == ep.Group.OwnerID))
                {
                    e = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == gr.ActiveID);
                    receives.Add(e);
                }

                ViewData["actives"] = actives;
                ViewData["receives"] = receives;
            }

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
            ep.LodgeRegisteredID = null;
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
        public ActionResult FindFriend(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            var eps = db.ExaminationsPapers.Where(r => r.LodgeRegisteredID == ep.LodgeRegisteredID && r.ExamPaperID != ep.ExamPaperID);

            if (ep.GroupID != null)
            {
                List<GroupRequest> grs = new List<GroupRequest>();
                foreach (ExaminationsPaper e in eps)
                {
                    var links = from r in db.GroupRequests
                                where (r.ActiveID == e.ExamPaperID && r.ReceiveID == ep.Group.OwnerID)
                                    || (r.ActiveID == ep.Group.OwnerID && r.ReceiveID == e.ExamPaperID)
                                select r;
                    foreach (GroupRequest gr in links) grs.Add(gr);
                }
                ViewData["grs"] = grs;
            }

            ViewData["eps"] = eps;
            return View(ep);
        }
        public ActionResult DeleteRequest(int id, int ownerID) // deny u join g
        {
            // Two way to delete:
            // 1. One parameter
            if (ownerID == -1)
            {
                GroupRequest gr = db.GroupRequests.SingleOrDefault(r => r.ID == id);
                db.GroupRequests.Remove(gr);
                db.SaveChanges();
                return Redirect(Request.UrlReferrer.AbsoluteUri);
            }

            // 2. Two parameters
            GroupRequest active = db.GroupRequests.SingleOrDefault(r => r.ActiveID == id && r.ReceiveID == ownerID);
            if (active != null) db.GroupRequests.Remove(active);

            GroupRequest receive = db.GroupRequests.SingleOrDefault(r => r.ActiveID == ownerID && r.ReceiveID == id);
            if (receive != null) db.GroupRequests.Remove(receive);

            db.SaveChanges();
            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }
        public ActionResult AcceptRequest(int id, int ownerID) // u join g
        {
            ExaminationsPaper u = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            ExaminationsPaper owner = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == ownerID);
            u.GroupID = owner.GroupID;
            ++owner.Group.Quantity;

            foreach (GroupRequest gr in db.GroupRequests.Where(r => r.ActiveID == id || r.ReceiveID == id))
                db.GroupRequests.Remove(gr);
            db.SaveChanges();

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }
        public ActionResult InviteToGroup(int id, int oID) // u invite o
        {
            ExaminationsPaper u = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            if (u.GroupID == null) // u has no group
            {
                Group g = new Group();
                g.OwnerID = id; // create new group
                g.Quantity = 1;
                db.Groups.Add(g);
                db.SaveChanges();
                u.GroupID = g.GroupID; // set u as owner
                db.SaveChanges();
                u = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            }

            GroupRequest gr = new GroupRequest();
            gr.ActiveID = u.Group.OwnerID;
            gr.ReceiveID = oID;
            db.GroupRequests.Add(gr);
            db.SaveChanges();

            return RedirectToAction("FindFriend", new { id = id });
        }
        public ActionResult AskToJoinGroup(int id, int oID) // u ask to join to o's group
        {
            GroupRequest gr = new GroupRequest();
            gr.ActiveID = id;
            gr.ReceiveID = oID;
            db.GroupRequests.Add(gr);
            db.SaveChanges();

            return RedirectToAction("FindFriend", new { id = id });
        }
        public ActionResult LeaveGroup(int id) // Permission: only team member, except owner
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            Group g = ep.Group;
            ep.GroupID = null;
            --g.Quantity;
            db.SaveChanges();

            return RedirectToAction("DetailsExamPaper", new { id = id });
        }
        public ActionResult DeleteGroup(int id) // permission: owner only.
        {
            ExaminationsPaper owner = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            Group g = owner.Group;

            // clear all link between group members (owner included) and the group
            foreach (ExaminationsPaper m in g.ExaminationsPapers) m.GroupID = null;
            // clear all group request in or out this group
            foreach (GroupRequest m in db.GroupRequests.Where(r => r.ActiveID == id || r.ReceiveID == id)) db.GroupRequests.Remove(m);
            // remove the group
            db.Groups.Remove(g);
            db.SaveChanges();

            return RedirectToAction("DetailsExamPaper", new { id = id });
        }
        #endregion
    }
}