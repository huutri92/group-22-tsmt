using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services.Description;
using TSMT.Models;
using System.Web.Mvc;

namespace TSMT.Controllers
{
    public class CharityController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        [CheckAuth("~/Home/Entrance/", 2, "/")]
        public ActionResult Index()
        {
            return View();
        }

        #region CEs
        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageCharityExam()
        {
            Account acc = (Account)Session["acc"];
            var ces = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID);
            return View(ces);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult AddCharityExam()
        {
            ViewData["exams"] = db.Examinations.ToList();
            return View();
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
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

        [CheckAuth("~/Home/Entrance", 2, "/")]
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

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult EditCharityExam(int ceId)
        {
            ViewData["exams"] = db.Examinations.ToList();
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
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

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult DetailsCharityExam(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }
        #endregion
        #region CARS
        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageCar(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            ViewData["cars"] = db.Cars.Where(r => r.CharityExamID == ceId).ToList();
            ViewData["ceId"] = ceId;
            return View(ce);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult AddCar(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
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

            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == car.CharityExamID);
            ce.TotalSlotsVehicles += car.TotalSlots;
            ce.AvailableSlotsVehicles += car.AvailableSlots;

            db.Cars.Add(car);
            db.SaveChanges();

            return RedirectToAction("ManageCar", new { ceId = car.CharityExamID });
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        //public ActionResult DeleteCar(int carId)
        //{
        //    Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

        //    ChairitiesExam ce = car.ChairitiesExam;
        //    ce.TotalSlotsVehicles -= car.TotalSlots;
        //    ce.AvailableSlotsVehicles -= car.AvailableSlots;

        //    db.Cars.Remove(car);
        //    db.SaveChanges();
        //    return RedirectToAction("ManageCar", new { ceId = ce.CharityExamID });
        //}

        public JsonResult DeleteCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            ChairitiesExam ce = car.ChairitiesExam;
            ce.TotalSlotsVehicles -= car.TotalSlots;
            ce.AvailableSlotsVehicles -= car.AvailableSlots;

            db.Cars.Remove(car);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult EditCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            return View(car);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        [HttpPost]
        public ActionResult EditCar(FormCollection f)
        {
            int carId = int.Parse(f["carId"]);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

            ChairitiesExam ce = car.ChairitiesExam;
            ce.TotalSlotsVehicles -= car.TotalSlots;
            ce.AvailableSlotsVehicles -= car.AvailableSlots;

            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];

            ce.TotalSlotsVehicles += car.TotalSlots;
            ce.AvailableSlotsVehicles += car.AvailableSlots;

            db.SaveChanges();

            return RedirectToAction("ManageCar", new { ceId = car.CharityExamID });
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        //public ActionResult ApproveCar(int carId)
        //{
        //    Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

        //    ChairitiesExam ce = car.ChairitiesExam;
        //    car.IsApproved = true;
        //    db.SaveChanges();
        //    return RedirectToAction("ManageCar", new { ceId = ce.CharityExamID });
        //}

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

        //[CheckAuth("~/Home/Entrance", 2, "/")]
        //public ActionResult DenieCar(int id)
        //{
        //    Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

        //    ChairitiesExam ce = car.ChairitiesExam;
        //    car.CharityExamID = null;
        //    db.SaveChanges();
        //    return RedirectToAction("ManageCar", new { ceId = ce.CharityExamID });
        //}

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public JsonResult DenieCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            //ChairitiesExam ce = car.ChairitiesExam;
            car.CharityExamID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult DetailsCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(c => c.CarID == carId);
            if (car.Sponsor != null) ViewData["sponsor"] = car.Sponsor.Account.Profile.Lastname + "" + car.Sponsor.Account.Profile.Firstname;
            
                ViewData["ceId"] = car.CharityExamID;
            return View(car);

        }

        #endregion
        #region LODGES
        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageLodge(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            ViewData["lodges"] = db.Lodges.Where(r => r.CharityExamID == ceId).ToList();
            ViewData["ceId"] = ceId;
            return View(ce);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult AddLodge(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            return View(ce);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        [HttpPost]
        public ActionResult AddLodge(FormCollection f)
        {
            Lodge lodge = new Lodge();
            lodge.Address = f["Address"];
            lodge.CharityExamID = int.Parse(f["ceId"]);
            lodge.TotalRooms = 0;
            lodge.TotalSlots = 0;
            lodge.AvailableSlots = 0;
            db.Lodges.Add(lodge);
            db.SaveChanges();

            return RedirectToAction("ManageLodge", new { ceId = lodge.CharityExamID });
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
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
            db.Lodges.Remove(lodge);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult EditLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        [HttpPost]
        public ActionResult EditLodge(FormCollection f)
        {
            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodge.Address = f["Address"];
            db.SaveChanges();

            return RedirectToAction("ManageLodge", new { ceId = lodge.CharityExamID });
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult DetailsLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        //public ActionResult ApproveLodge(int lodgeId)
        //{
        //    Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);

        //    int? ceId = lodge.CharityExamID;
        //    lodge.IsAprroved = true;
        //    db.SaveChanges();
        //    return RedirectToAction("ManageLodge", new { ceId = ceId });
        //}

        public JsonResult ApproveLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

                //int ceId = lodge.CharityExamID;
                lodge.IsAprroved = true;
                db.SaveChanges();
            return Json("",JsonRequestBehavior.AllowGet);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public JsonResult DenieLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            //int? ceId = lodge.CharityExamID;
            lodge.CharityExamID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        #endregion
        #region ROOMS
        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageRoom(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            return View(lodge);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult AddRoom(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
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

        [CheckAuth("~/Home/Entrance", 2, "/")]
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

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult EditRoom(int roomId)
        {
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == roomId);
            return View(room);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
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
        [CheckAuth("~/Home/Entrance", 2, "/")]
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
        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageVolunteer(int ceId)
        {
            var vos = db.Volunteers.Where(r => r.CharityExamID == ceId);
            ViewData["ceId"] = ceId;
            return View(vos);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public JsonResult RemoveVolunteer(int id)
        {
            var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == id);
                //int ceId = vo.CharityExamID.Value;
            
            vo.CharityExamID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        //[CheckAuth("~/Home/Entrance", 2, "/")]
        //public ActionResult ApproveVolunteer(int voId)
        //{
        //    var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == voId);
        //    int ceId = vo.CharityExamID.Value;
        //    vo.IsApproved = true;
        //    db.SaveChanges();
        //    return RedirectToAction("ManageVolunteer", new { ceId = ceId });
        //}

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public JsonResult ApproveVolunteer(int id)
        {
            var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == id);
            //int ceId = vo.CharityExamID.Value;
            vo.IsApproved = true;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public JsonResult DenieVolunteer(int id)
        {
            var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == id);
            //int ceId = vo.CharityExamID.Value;
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
        #region CANDIDATES
        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageCandidate(int ceId)
        {
            var joinins = db.JoinsIns.Where(r => r.CharitiesExaminationsID == ceId);
            ViewData["ceId"] = ceId;
            return View(joinins);
        }

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult RemoveCandidate(int joininId)
        {
            var joinin = db.JoinsIns.SingleOrDefault(r => r.JoinInID == joininId);

                var ceId = joinin.CharitiesExaminationsID;
                db.JoinsIns.Remove(joinin);
                db.SaveChanges();
                return RedirectToAction("ManageCandidate", new { ceId = ceId });

        }

        public ActionResult AssignToRoom(int ceId)
        {
            var joinins = db.JoinsIns.Where(r => r.CharitiesExaminationsID == ceId);
            var examPapers = new List<ExaminationsPaper>();
            foreach (var item in joinins)
            {
                examPapers.Add(item.ExaminationsPaper);
            }

            //Lấy danh sách nhóm nữ
            var females = new List<ExaminationsPaper>();
            females = examPapers.Where(e => (e.Candidate.Account.Profile.IsFemale)).ToList();

            //Gom nhóm
            var listfemaleGroup = new List<CandidateGroup>();
            foreach (var female in females)
            {
                var fg = new CandidateGroup();
                fg.ExamPaperId = female.ExamPaperID;
                fg.isFemale = female.Candidate.Account.Profile.IsFemale;
                fg.Group = female.GroupID;
                listfemaleGroup.Add(fg);
            }

            return View("ManageCandidate",joinins);
        }
        #endregion

        #region FUNDS

        [CheckAuth("~/Home/Entrance", 2, "/")]
        public ActionResult ManageFunds(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            ViewData["funds"] = db.Funds.Where(r => r.CharityExamID == ceId).ToList();
            double TotalFunds = 0;
            foreach (var item in (IEnumerable<Fund>)ViewData["funds"])
            {
                TotalFunds = TotalFunds + item.FundSponsored;
            }
            string s = TotalFunds.ToString("##,###");
            ViewData["totalfunds"] = s;           
            ViewData["ceId"] = ceId;
            return View(ce);
        }
        #endregion


    }

    public class CandidateGroup
    {
        public int ExamPaperId { get; set; }
        public bool isFemale { get; set; }
        public int? Group { get; set; }
    }

    
}