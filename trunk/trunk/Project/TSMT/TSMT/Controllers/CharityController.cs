using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Management;
using TSMT.Models;
using System.Web.Mvc;

namespace TSMT.Controllers
{
    public class CharityController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult Index()
        {
            return View();
        }

        #region CEs
        public ActionResult ManageCharityExam()
        {
            Account acc = (Account)Session["acc"];
            var ces = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID);
            return View(ces);
        }
        public ActionResult AddCharityExam()
        {
            ViewData["exams"] = db.Examinations.ToList();
            return View();
        }
        [HttpPost]
        public ActionResult AddCharityExam(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Charity cha = acc.Charities.SingleOrDefault(r => r.AccountID == acc.AccountID);

            ChairitiesExam ce = new ChairitiesExam();
            ce.ExamID = int.Parse(f["ExamId"]);
            ce.CharityID = cha.CharityID;
            ce.CharityExamName = f["CharityExamName"];
            ce.TotalSlotsLodges = 0;
            ce.AvailableSlotsLodges = 0;
            ce.TotalSlotsVehicles = 0;
            ce.AvailableSlotsVehicles = 0;
            db.ChairitiesExams.Add(ce);
            db.SaveChanges();

            return RedirectToAction("ManageCharityExam");
        }
        public ActionResult DeleteCharityExam(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            var lodges = db.Lodges.Where(r => r.CharityExamID == ceId);
            foreach (Lodge lodge in lodges)
            {
                var rooms = db.Rooms.Where(r => r.LodgeID == lodge.LodgeID);
                foreach (Room room in rooms)
                {
                    lodge.TotalRooms -= 1;
                    lodge.TotalSlots -= room.TotalSlots;
                    lodge.AvailableSlots -= room.AvailableSlots;

                    lodge.ChairitiesExam.TotalSlotsLodges -= room.TotalSlots;
                    lodge.ChairitiesExam.AvailableSlotsLodges -= room.AvailableSlots;
                    db.Rooms.Remove(room);
                }
                db.Lodges.Remove(lodge);
            }

            var cars = db.Cars.Where(r => r.CharityExamID == ceId);
            foreach (Car car in cars)
            {
                ce.TotalSlotsVehicles -= car.TotalSlots;
                ce.AvailableSlotsVehicles -= car.AvailableSlots;
                db.Cars.Remove(car);
            }

            db.ChairitiesExams.Remove(ce);
            db.SaveChanges();
            return RedirectToAction("ManageCharityExam");
        }
        public ActionResult EditCharityExam(int ceId)
        {
            ViewData["exams"] = db.Examinations.ToList();
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }
        [HttpPost]
        public ActionResult EditCharityExam(FormCollection f)
        {
            int ceId = int.Parse(f["ceId"]);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            ce.ExamID = int.Parse(f["ExamId"]);
            ce.CharityExamName = f["CharityExamName"];
            db.SaveChanges();

            return RedirectToAction("ManageCharityExam");
        }
        public ActionResult DetailsCharityExam(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }
        #endregion
        #region CARS
        public ActionResult ManageCar(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            @ViewData["ceId"] = ce.CharityExamID;
            //ViewData["cars"] = db.Cars.Where(r => r.CharityExamID == ceId).ToList();
            ViewData["carsOfCharity"] = ce.Cars.Where(c => c.SponsorID == null);
            ViewData["carsSponsor"] = ce.Cars.Where(e => e.SponsorID != null);
            return View(ce);
        }
        public ActionResult AddCar(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }
        [HttpPost]
        public ActionResult AddCar(FormCollection f)
        {
            Car car = new Car();
            car.CharityExamID = int.Parse(f["ceId"]);
            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];
            car.IsApproved = true;
            db.Cars.Add(car);

            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == car.CharityExamID);
            ce.TotalSlotsVehicles += car.TotalSlots;
            ce.AvailableSlotsVehicles += car.AvailableSlots;
            db.SaveChanges();

            CreateScheduleCar(car.CarID);
            return RedirectToAction("ManageCar", new { ceId = car.CharityExamID });
        }
        public void CreateScheduleCar(int id) // carId
        {
            Car c = db.Cars.SingleOrDefault(r => r.CarID == id);

            foreach (ScheduleExam se in c.ChairitiesExam.Examination.ScheduleExams)
            {
                SchedulesCar sc = new SchedulesCar();
                sc.CarID = id;
                sc.Day = se.Day;
                sc.ArriveTime = se.BeginHour.AddHours(-1);
                sc.PickUpTime = se.EndHour.AddHours(-0.5);
                db.SchedulesCars.Add(sc);
            }

            db.SaveChanges();
        }
        public JsonResult DeleteCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(c => c.CharityExamID == car.CharityExamID);
            ce.TotalSlotsVehicles -= car.TotalSlots;
            ce.AvailableSlotsVehicles -= car.AvailableSlots;

            if (ce.TotalSlotsVehicles <= 0)
            {
                ce.TotalSlotsVehicles = 0;
            }
            if (ce.AvailableSlotsVehicles <= 0)
            {
                ce.AvailableSlotsVehicles = 0;
            }
            db.Cars.Remove(car);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            return View(car);
        }
        [HttpPost]
        public ActionResult EditCar(FormCollection f)
        {
            int carId = int.Parse(f["carId"]);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(c => c.CharityExamID == car.CharityExamID);
            ce.TotalSlotsVehicles -= car.TotalSlots;
            ce.AvailableSlotsVehicles -= car.AvailableSlots;

            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];

            ce.TotalSlotsVehicles += car.TotalSlots;
            ce.AvailableSlotsVehicles += car.AvailableSlots;
            if (ce.TotalSlotsVehicles < 0)
            {
                ce.TotalSlotsVehicles = 0;
            }
            if (ce.AvailableSlotsVehicles < 0)
            {
                ce.AvailableSlotsVehicles = 0;
            }
            db.SaveChanges();

            return RedirectToAction("ManageCar", new { ceId = car.CharityExamID });
        }

        public JsonResult ApproveCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            //ChairitiesExam ce = car.ChairitiesExam;
            car.IsApproved = true;
            db.SaveChanges();
            //var carJ = from r in db.Cars
            //          where r.CarID == id
            //          select new
            //          {
            //             status = r.IsApproved,
            //          };
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult DenieCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            //ChairitiesExam ce = car.ChairitiesExam;
            car.CharityExamID = null;

            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult RemoveCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            //ChairitiesExam ce = car.ChairitiesExam;
            
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(c => c.CharityExamID == car.CharityExamID);
            ce.TotalSlotsVehicles -= car.TotalSlots;
            ce.AvailableSlotsVehicles -= car.AvailableSlots;
            if (ce.TotalSlotsVehicles < 0)
            {
                ce.TotalSlotsVehicles = 0;
            }
            if (ce.AvailableSlotsVehicles < 0)
            {
                ce.AvailableSlotsVehicles = 0;
            }
            car.IsApproved = false;
            car.CharityExamID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }


        public ActionResult DetailsCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(c => c.CarID == carId);
            if (car.Sponsor != null) ViewData["sponsor"] = car.Sponsor.Account.Profile.Lastname + " " + car.Sponsor.Account.Profile.Firstname;

            ViewData["ceId"] = car.CharityExamID;
            return View(car);

        }

        #endregion
        #region LODGES
        public ActionResult ManageLodge(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            ViewData["lodgesOfCharity"] = db.Lodges.Where(r => r.CharityExamID == ceId && r.SponsorID == null).ToList();
            ViewData["lodgesSponsor"] = db.Lodges.Where(r => r.CharityExamID == ceId && r.SponsorID != null).ToList();
            ViewData["ceId"] = ceId;
            return View(ce);
        }
        public ActionResult ViewLodge(int id)
        {
            Lodge lod = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lod);
        }
        public ActionResult AddLodge(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }
        [HttpPost]
        public ActionResult AddLodge(FormCollection f)
        {
            Lodge lodge = new Lodge();
            lodge.Longitude = f["Longitude"];
            lodge.Latitude = f["Latitude"];
            lodge.Address = f["Address"];
            lodge.CharityExamID = int.Parse(f["ceId"]);
            lodge.TotalRooms = 0;
            lodge.TotalSlots = 0;
            lodge.AvailableSlots = 0;
            lodge.IsApproved = true;
            db.Lodges.Add(lodge);
            db.SaveChanges();

            return RedirectToAction("ManageLodge", new { ceId = lodge.CharityExamID });
        }
        public JsonResult DeleteLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            int? ceId = lodge.CharityExamID;

            var rooms = db.Rooms.Where(r => r.LodgeID == lodge.LodgeID);
            foreach (var room in rooms)
            {
                lodge.TotalRooms -= 1;
                lodge.TotalSlots -= room.TotalSlots;
                lodge.AvailableSlots -= room.AvailableSlots;

                lodge.ChairitiesExam.TotalSlotsLodges -= room.TotalSlots;
                lodge.ChairitiesExam.AvailableSlotsLodges -= room.AvailableSlots;
                db.Rooms.Remove(room);
            }
            if (lodge.TotalRooms < 0)
            {
                lodge.TotalRooms = 0;
            }
            if (lodge.TotalSlots < 0)
            {
                lodge.TotalSlots = 0;
            }
            if (lodge.AvailableSlots < 0)
            {
                lodge.AvailableSlots = 0;
            }
            if (lodge.ChairitiesExam.TotalSlotsLodges < 0)
            {
                lodge.ChairitiesExam.TotalSlotsLodges = 0;
            }
            if (lodge.ChairitiesExam.AvailableSlotsLodges < 0)
            {
                lodge.ChairitiesExam.AvailableSlotsLodges = 0;
            }
            db.Lodges.Remove(lodge);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }
        [HttpPost]
        public ActionResult EditLodge(FormCollection f)
        {
            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodge.Longitude = f["Longitude"];
            lodge.Latitude = f["Latitude"];
            lodge.Address = f["Address"];
            db.SaveChanges();

            return RedirectToAction("ManageLodge", new { ceId = lodge.CharityExamID });
        }
        public ActionResult DetailsLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            return View(lodge);
        }

        public JsonResult ApproveLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.AvailableSlotsLodges += lodge.AvailableSlots;
            ce.TotalSlotsLodges += lodge.TotalSlots;
            lodge.IsApproved = true;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult DenieLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            //int? ceId = lodge.CharityExamID;
            lodge.CharityExamID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult RemoveLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.AvailableSlotsLodges -= lodge.AvailableSlots;
            ce.TotalSlotsLodges -= lodge.TotalSlots;
            //int? ceId = lodge.CharityExamID;
            lodge.CharityExamID = null;
            lodge.IsApproved = false;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        #endregion
        #region ROOMS
        public ActionResult ManageRoom(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            ViewData["ceId"] = lodge.CharityExamID;
            return View(lodge);
        }
        public ActionResult AddRoom(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }
        [HttpPost]
        public ActionResult AddRoom(FormCollection f)
        {
            Room room = new Room();
            room.RoomName = f["RoomName"];
            room.LodgeID = int.Parse(f["lodgeId"]);
            room.TotalSlots = int.Parse(f["TotalSlots"]);
            room.AvailableSlots = room.TotalSlots;

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalRooms += 1;
            lodge.TotalSlots += room.TotalSlots;
            lodge.AvailableSlots += room.AvailableSlots;

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.TotalSlotsLodges += room.TotalSlots;
            ce.AvailableSlotsLodges += room.AvailableSlots;

            db.Rooms.Add(room);
            db.SaveChanges();

            return RedirectToAction("ManageRoom", new { lodgeId = room.LodgeID });
        }
        public JsonResult DeleteRoom(int id)
        {
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == id);
            int lodgeId = room.LodgeID;

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalRooms -= 1;
            lodge.TotalSlots -= room.TotalSlots;
            lodge.AvailableSlots -= room.AvailableSlots;
            if (lodge.TotalSlots < 0) lodge.TotalSlots = 0;
            if (lodge.AvailableSlots < 0) lodge.AvailableSlots = 0;

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.TotalSlotsLodges -= room.TotalSlots;
            ce.AvailableSlotsLodges -= room.AvailableSlots;
            if (ce.TotalSlotsLodges < 0) ce.TotalSlotsLodges = 0;
            if (ce.AvailableSlotsLodges < 0) ce.AvailableSlotsLodges = 0;

            db.Rooms.Remove(room);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditRoom(int roomId)
        {
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == roomId);
            return View(room);
        }
        [HttpPost]
        public ActionResult EditRoom(FormCollection f)
        {
            int roomId = int.Parse(f["roomId"]);
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == roomId);

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalSlots -= room.TotalSlots;
            lodge.AvailableSlots -= room.AvailableSlots;

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.TotalSlotsLodges -= room.TotalSlots;
            ce.AvailableSlotsLodges -= room.AvailableSlots;

            room.TotalSlots = int.Parse(f["TotalSlots"]);
            room.AvailableSlots = room.TotalSlots;

            lodge.TotalSlots += room.TotalSlots;
            lodge.AvailableSlots += room.AvailableSlots;

            ce.TotalSlotsLodges += room.TotalSlots;
            ce.AvailableSlotsLodges += room.AvailableSlots;

            db.SaveChanges();

            return RedirectToAction("ManageRoom", new { lodgeId = room.LodgeID });
        }
        #endregion
        #region SPONSORS
        public ActionResult ManageSponsor(int ceId)
        {
            var cars = db.Cars.Where(r => r.CharityExamID == ceId && r.SponsorID != null);
            var lodges = db.Lodges.Where(r => r.CharityExamID == ceId && r.SponsorID != null);
            var funds = db.Funds.Where(r => r.CharityExamID == ceId);
            ViewData["cars"] = cars;
            ViewData["lodges"] = lodges;
            ViewData["funds"] = funds;
            ViewData["ceId"] = ceId;
            return View();
        }
        #endregion
        #region VOLUNTEERS
        public ActionResult ManageVolunteer(int ceId)
        {
            var vos = db.Volunteers.Where(r => r.CharityExamID == ceId);
            ViewData["ceId"] = ceId;
            return View(vos);
        }

        public JsonResult RemoveVolunteer(int id)
        {
            var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == id);

            vo.CharityExamID = null;
            vo.IsApproved = false;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }


        public JsonResult ApproveVolunteer(int id)
        {
            var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == id);
            vo.IsApproved = true;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult DenieVolunteer(int id)
        {
            var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == id);
            vo.CharityExamID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public ActionResult DetailsVolunteer(int voId)
        {
            Volunteer volunteer = db.Volunteers.SingleOrDefault(c => c.VolunteerID == voId);

            ViewData["ceId"] = volunteer.CharityExamID;
            return View(volunteer);

        }
        #endregion



        #region EXAMINATION-PAPERS
        public ActionResult ManageCandidate(int id) // ceId
        {
            var eps = db.ExaminationsPapers.Where(r => r.CharityExamID == id);
            ViewData["ceId"] = id;
            return View(eps);
        }
        //public ActionResult RemoveCandidate(int id) // epId. Assumptions: chua xep phong, xep xe.
        //{
        //    Owner ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
        //    int ceId = ep.CharityExamID.GetValueOrDefault();
        //    ep.CharityExamID = null;
        //    db.SaveChanges();
        //    return RedirectToAction("ManageCandidate", new { id = ceId });
        //}

        public JsonResult RemoveCandidate(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            //var ceId = joinin.CharitiesExaminationsID;
            //db.JoinsIns.Remove(joinin);
            ep.CharityExamID = null;
            ep.IsApproved = false;
            db.SaveChanges();
            //return RedirectToAction("ManageCandidate", new { ceId = ceId });
            return Json("", JsonRequestBehavior.AllowGet);

        }

        public JsonResult ApproveCandidate(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            //int ceId = lodge.CharityExamID;
            ep.IsApproved = true;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }


        public ActionResult DetailsCandidate(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);
            if (ep.GroupID != null)
            {
                var leader = db.Candidates.FirstOrDefault(c => c.CandidateID == ep.GroupID);
                ViewData["Group"] = leader.Account.Profile.Lastname + " " + leader.Account.Profile.Firstname;
            }

            ViewData["ceId"] = ep.CharityExamID;
            return View(ep);

        }
        #endregion

        #region FUNDS

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageFunds(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            ViewData["funds"] = db.Funds.Where(r => r.CharityExamID == ceId).ToList();
            double totalFunds = 0;
            foreach (var item in (IEnumerable<Fund>)ViewData["funds"])
            {
                totalFunds = totalFunds + item.FundSponsored;
            }
            string s = totalFunds.ToString("##,###");
            ViewData["totalfunds"] = s;
            ViewData["ceId"] = ceId;
            return View(ce);
        }

        public JsonResult ApproveFunds(int id)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == id);

            //int ceId = lodge.CharityExamID;
            fund.IsApproved = true;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult DenieFund(int id)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == id);

            //int ceId = lodge.CharityExamID;
            fund.CharityExamID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        #endregion
        #region GROUPS
        #endregion
        #region ASSIGN-ROOMS
        public ActionResult AssignToRoom(int id) // ceId
        {
            ViewData["ceId"] = id;
            return View();
        }
        [HttpPost]
        public ActionResult AssignToRoom(FormCollection f)
        {
            int ceId = int.Parse(f["ceId"]);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);

            var lodges = ce.Lodges; // lodges of ce
            List<Group> groups = new List<Group>();
            List<Room> rooms = new List<Room>();
            bool[] genders = { false, true };
            List<ExaminationsPaper> eps = new List<ExaminationsPaper>();

            // sap nu truoc
            foreach (bool gender in genders)
            {
                // sap theo tung lodge
                foreach (Lodge lodge in lodges)
                {
                    // ds cac phong thuoc lodge
                    rooms = db.Rooms.Where(r => r.LodgeID == lodge.LodgeID).OrderByDescending(r => r.AvailableSlots).ToList();

                    // ds nhom
                    groups = (from r in db.Groups
                              where r.Owner.LodgeRegisteredID == lodge.LodgeID // dang ki vao lodge nay
                                 && r.Owner.Candidate.Account.Profile.Gender == gender // dung gioi tinh
                              select r).OrderByDescending(r => r.Quantity).ToList(); // sap giam dan theo so luong


                    // sap nhom truoc
                    foreach (Group g in groups)
                    {
                        foreach (Room r in rooms)
                        {
                            if (r.AvailableSlots >= g.Quantity && (r.Gender == null || r.Gender == g.Owner.Candidate.Account.Profile.Gender)) // cung gioi tinh
                            {
                                foreach (ExaminationsPaper ep in g.ExaminationsPapers) { ep.RoomID = r.RoomID; }

                                // thay doi so luong
                                r.AvailableSlots -= g.Quantity;
                                r.Lodge.AvailableSlots -= g.Quantity;
                                r.Lodge.ChairitiesExam.AvailableSlotsLodges -= g.Quantity;
                                r.Gender = gender; // gioi tinh cua phong nay
                                break; // chuyen sang xep nhom tiep theo
                            }
                        }
                    }

                    // ds ca nhan
                    eps = (from r in db.ExaminationsPapers
                           where r.GroupID == null // ko thuoc nhom nao
                              && r.LodgeRegisteredID == lodge.LodgeID // dang ki vao lodge nay
                              && r.Candidate.Account.Profile.Gender == gender // dung gioi tinh
                           select r).ToList(); // khong sap xep theo so luong

                    // sap ca nhan sau
                    foreach (ExaminationsPaper ep in eps)
                    {
                        foreach (Room r in rooms)
                        {
                            if (r.AvailableSlots >= 1 && (r.Gender == null || r.Gender == ep.Candidate.Account.Profile.Gender)) // dung gioi tinh
                            {
                                ep.RoomID = r.RoomID;

                                // thay doi so luong --> tu duoi len tren
                                --r.AvailableSlots;
                                --r.Lodge.AvailableSlots;
                                --r.Lodge.ChairitiesExam.AvailableSlotsLodges;
                                r.Gender = gender; // gioi tinh cua phong nay
                                break; // chuyen sang xep nu tiep theo
                            }
                        }
                    }
                }
            }

            db.SaveChanges();
            return RedirectToAction("ManageCandidate", new { id = ceId });
        }
        #endregion
        #region ASSIGN-CARS
        public ActionResult AssignToCar(int id) // ceId
        {
            ViewData["ceId"] = id;
            return View();
        }
        [HttpPost]
        public ActionResult AssignToCar(FormCollection f)
        {
            int ceId = int.Parse(f["ceId"]);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);

            var lodges = ce.Lodges; // lodges of ce
            List<Car> cars = ce.Cars.OrderByDescending(r => r.AvailableSlots).ToList();
            List<int> venueIDs = new List<int>();
            List<ExaminationPlace> venues = new List<ExaminationPlace>();
            ExaminationPlace ePlace;
            List<ExaminationsPaper> eps = new List<ExaminationsPaper>();

            foreach (Lodge lodge in lodges)
            {
                venues = new List<ExaminationPlace>();

                // ds dia diem thi cua cac thi sinh o lodge nay.
                venueIDs = lodge.ExaminationsPapers.Select(r => r.VenueID).Distinct().ToList();
                foreach (int venueID in venueIDs)
                {
                    ePlace = new ExaminationPlace(venueID, lodge.ExaminationsPapers.Where(r => r.VenueID == venueID).ToList());
                    venues.Add(ePlace);
                }
                venues = venues.OrderByDescending(r => r.Quantity).ToList();

                foreach (ExaminationPlace v in venues)
                {
                    foreach (Car c in cars)
                    {
                        if (c.AvailableSlots >= v.Quantity)
                        {
                            foreach (ExaminationsPaper ep in v.Eps) { ep.CarID = c.CarID; }

                            // thay doi so luong
                            c.AvailableSlots -= v.Quantity;
                            c.ChairitiesExam.AvailableSlotsVehicles -= v.Quantity;
                            break; // chuyen sang xep dia diem thi tiep theo
                        }
                    }
                }
            }

            db.SaveChanges();
            return RedirectToAction("ManageCandidate", new { id = ceId });
        }
        #endregion
        #region SCHEDULE-CARS
        #endregion

        public ActionResult DisplayRoute(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            List<string> address = new List<string>();
            address.Add(car.ExaminationsPapers.FirstOrDefault().Lodge.Address);

            var venues = new List<Venue>();
            List<int> venueIDs = new List<int>();
            // ds dia diem thi cua cac thi sinh thuoc xe nay.
            venueIDs = car.ExaminationsPapers.Select(r => r.VenueID).Distinct().ToList();
            foreach (int venueID in venueIDs)
            {
                address.Add(db.Venues.SingleOrDefault(r => r.VenueID == venueID).Address);
            }

            //var listExamPaper = new List<Owner>();
            //listExamPaper = db.ExaminationsPapers.Where(e => e.CarID == carId).ToList();
            //var listVenue = new List<Venue>();    
            //foreach (var ex in listExamPaper)
            //{
            //    listVenue.Add(ex.Venue);
            //}
            //listVenue = listVenue.Distinct().ToList();
            //var ep = new Owner();
            //var lodge = new Lodge();
            //var examPaper = listExamPaper.FirstOrDefault();
            //if (examPaper != null) joinIn = examPaper.JoinsIns.FirstOrDefault();
            //if (joinIn != null) lodge = joinIn.Room.Lodge;
            //var address = new List<string>();
            //address.Add(lodge.Address);
            //foreach (var venue in listVenue)
            //{
            //    address.Add(venue.Address);
            //}
            //address = new List<string>();
            //address.Add("03 hoa binh, quan 11");
            //address.Add("100 quang trung, quan 12");
            //address.Add("12 nguyen van bao, quan go vap");
            //address.Add("cong truong me linh");
            ViewData["Place"] = address;


            //ViewData["Place"] =
            //    "[{\"index\": 0, \"address\": \"01 le duan, quan 1\"}, {\"index\": 1, \"address\": \"01 lac long quan, quan tan binh\"}, {\"index\": 2, \"address\": \"01 tran quang khai, quan 1\"}, {\"index\": 3, \"address\": \"59 nguyen hong dao, quan tan binh\"}]";
            return View();
        }
    }
}