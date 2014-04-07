using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllerss
{
    [CheckAuth(1)]
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

            if (ep.GroupID == null) // has no group --> can ask, or being invited by a Group
            {
                ViewData["actives"] = db.GroupRequests.Where(r => r.ActiveID == ep.ExamPaperID).ToList();
                ViewData["receives"] = db.GroupRequests.Where(r => r.ReceiveID == ep.ExamPaperID).ToList();
            }
            else // has group --> can invite, or being asked with a Candidate
            {
                ViewData["actives"] = db.GroupRequests.Where(r => r.GroupID == ep.GroupID && r.ReceiveID != ep.ExamPaperID).ToList();
                ViewData["receives"] = db.GroupRequests.Where(r => r.GroupID == ep.GroupID && r.ReceiveID == ep.ExamPaperID).ToList();
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
            return View(ep);
        }
        [HttpPost]
        public JsonResult GetDataFindFriend(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            var eps = db.ExaminationsPapers.Where(r => r.LodgeRegisteredID == ep.LodgeRegisteredID && r.ExamPaperID != ep.ExamPaperID);

            List<DataFindFriend> results = new List<DataFindFriend>();
            DataFindFriend record = new DataFindFriend();
            GroupRequest gr = new GroupRequest();
            foreach (ExaminationsPaper item in eps)
            {
                record = new DataFindFriend();
                record.name = item.Candidate.Account.Profile.Lastname + " " + @item.Candidate.Account.Profile.Middlename + " " + @item.Candidate.Account.Profile.Firstname;
                record.gender = item.Candidate.Account.Profile.Gender ? "Nam" : "Nữ";
                record.group = item.GroupID == null ? "Chưa có nhóm" : "Nhóm " + item.GroupID;

                if (ep.GroupID == null) // A has no group
                {
                    if (item.GroupID == null) // both are free
                    {
                        if (item.Candidate.Account.Profile.Gender == ep.Candidate.Account.Profile.Gender) // same gender
                        {
                            record.actions = String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}?{2}={3}'>{4}</a>", "InviteToGroup", ep.ExamPaperID, "oID", item.ExamPaperID, "Mời vào nhóm");
                            record.note = "";
                        }
                    }
                    else // B has group
                    {
                        gr = ep.Receives.SingleOrDefault(r => r.GroupID == item.GroupID); // B's group invited A?
                        if (gr != null) // invited
                        {
                            record.actions = String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}?{2}={3}'>{4}</a>", "AcceptRequest", ep.ExamPaperID, "gID", gr.GroupID, "Đồng ý");
                            record.actions += String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}'>{2}</a>", "DeleteRequest", gr.ID, "Từ chối");
                            record.note = gr.Active.Candidate.Account.Profile.Firstname + " đã mời bạn vào nhóm " + gr.GroupID;
                        }
                        else // not yet invited
                        {
                            gr = ep.Actives.SingleOrDefault(r => r.GroupID == item.GroupID); // A asked to join in B's group?
                            if (gr != null) // asked
                            {
                                record.actions = String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}'>{2}</a>", "DeleteRequest", gr.ID, "Huỷ");
                                record.note = "Bạn đã gửi lời đề nghị được vào nhóm " + item.GroupID;
                            }
                            else // not invited, not asked --> not linked: can ask to join in b's group if same gender
                            {
                                if (item.Candidate.Account.Profile.Gender == ep.Candidate.Account.Profile.Gender) // same gender
                                {
                                    record.actions = String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}?{2}={3}'>{4}</a>", "AskToJoinGroup", ep.ExamPaperID, "gID", item.GroupID, "Gửi yêu cầu vào nhóm");
                                    record.note = "";
                                }
                            }
                        }
                    }
                }
                else // A has group
                {
                    if (item.GroupID == null) // B has no group
                    {
                        gr = item.Receives.SingleOrDefault(r => r.GroupID == ep.GroupID); // A's group invited B?
                        if (gr != null) // invited
                        {
                            if (ep.Group.OwnerID == ep.ExamPaperID) // is owner of the group
                                record.actions = String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}'>{2}</a>", "DeleteRequest", gr.ID, "Huỷ lời mời");
                            record.note = (gr.ActiveID == ep.ExamPaperID ? "Bạn đã mời vào nhóm" : gr.Active.Candidate.Account.Profile.Firstname + " đã mời vào nhóm");
                        }
                        else // not yet invited
                        {
                            gr = item.Actives.SingleOrDefault(r => r.GroupID == ep.GroupID); // B asked to join to A's group?
                            if (gr != null) // asked
                            {
                                if (ep.Group.OwnerID == ep.ExamPaperID) // is owner of the group
                                {
                                    record.actions = String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}?{2}={3}'>{4}</a>", "AcceptRequest", item.ExamPaperID, "gID", ep.GroupID, "Đồng ý");
                                    record.actions += String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}'>{2}</a>", "DeleteRequest", gr.ID, "Từ chối");
                                }
                                record.note = "Đang yêu cầu được vào nhóm";
                            }
                            else // not invited, not asked --> not linked: can invite if same gender
                            {
                                if (item.Candidate.Account.Profile.Gender == ep.Candidate.Account.Profile.Gender) // same gender
                                {
                                    record.actions = String.Format("<a class='btn-u btn-u-default' href='/Candidate/{0}/{1}?{2}={3}'>{4}</a>", "InviteToGroup", ep.ExamPaperID, "oID", item.ExamPaperID, "Mời vào nhóm");
                                    record.note = "";
                                }
                            }
                        }
                    }
                    else // both are in groups
                    {
                        if (ep.GroupID == item.GroupID) // and in the same group
                        {
                            if (item.ExamPaperID == ep.Group.OwnerID) // B is the owner of A's group
                            {
                                record.actions = "";
                                record.note = "Nhóm trưởng của nhóm bạn";
                            }
                            else  // B is group member of A's group
                            {
                                record.actions = "";
                                record.note = "Thành viên của nhóm bạn";
                            }
                        }
                    }
                }
                results.Add(record);
            }

            return Json(new { success = true, data = results });
        }
        public ActionResult DeleteRequest(int id) // group request ID
        {
            GroupRequest gr = db.GroupRequests.SingleOrDefault(r => r.ID == id);
            db.GroupRequests.Remove(gr);
            db.SaveChanges();
            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }
        public ActionResult AcceptRequest(int id, int gID) // u join g
        {
            ExaminationsPaper u = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            Group g = db.Groups.SingleOrDefault(r => r.GroupID == gID);
            u.GroupID = gID;
            ++g.Quantity;

            foreach (GroupRequest gr in db.GroupRequests.Where(r => r.ActiveID == id || r.ReceiveID == id)) db.GroupRequests.Remove(gr);
            db.SaveChanges();

            return Redirect(Request.UrlReferrer.AbsoluteUri);
        }
        public ActionResult InviteToGroup(int id, int oID) // u invite o to u's group
        {
            ExaminationsPaper u = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            if (u.GroupID == null) // u has no group
            {
                Group g = new Group(); // create new group
                g.OwnerID = id; // set u as owner
                g.Quantity = 1;
                db.Groups.Add(g);
                db.SaveChanges();
                u.GroupID = g.GroupID; // connect u to the group
                db.SaveChanges();
                u = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id); // retrieve new info
            }

            GroupRequest gr = new GroupRequest();
            gr.ActiveID = id;
            gr.ReceiveID = oID;
            gr.GroupID = u.GroupID.Value; // sure u already in a group
            db.GroupRequests.Add(gr);
            db.SaveChanges();

            return RedirectToAction("FindFriend", new { id = id });
        }
        public ActionResult AskToJoinGroup(int id, int gID) // u ask to join to a group
        {
            Group g = db.Groups.SingleOrDefault(r => r.GroupID == gID);
            GroupRequest gr = new GroupRequest();
            gr.ActiveID = id;
            gr.ReceiveID = g.OwnerID;
            gr.GroupID = g.GroupID;
            db.GroupRequests.Add(gr);
            db.SaveChanges();

            return RedirectToAction("FindFriend", new { id = id });
        }
        public ActionResult LeaveGroup(int id) // Permission: only team member, except owner
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            foreach (GroupRequest gr in db.GroupRequests.Where(r => r.ActiveID == id)) db.GroupRequests.Remove(gr);

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
            foreach (GroupRequest m in db.GroupRequests.Where(r => r.GroupID == g.GroupID)) db.GroupRequests.Remove(m);
            // remove the group
            db.Groups.Remove(g);
            db.SaveChanges();

            return RedirectToAction("DetailsExamPaper", new { id = id });
        }
        #endregion
    }
}