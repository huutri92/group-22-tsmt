using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
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
            ViewData["cars"] = db.Cars.Where(r => r.CharityExamID == ceId).ToList();
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

            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == car.CharityExamID);
            ce.TotalSlotsVehicles += car.TotalSlots;
            ce.AvailableSlotsVehicles += car.AvailableSlots;

            db.Cars.Add(car);
            db.SaveChanges();

            return RedirectToAction("ManageCar", new { ceId = car.CharityExamID });
        }
        public ActionResult DeleteCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

            ChairitiesExam ce = car.ChairitiesExam;
            ce.TotalSlotsVehicles -= car.TotalSlots;
            ce.AvailableSlotsVehicles -= car.AvailableSlots;

            db.Cars.Remove(car);
            db.SaveChanges();
            return RedirectToAction("ManageCar", new { ceId = ce.CharityExamID });
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
        #endregion
        #region LODGES
        public ActionResult ManageLodge(int ceId)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceId);
            ViewData["lodges"] = db.Lodges.Where(r => r.CharityExamID == ceId).ToList();
            return View(ce);
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
            lodge.Address = f["Address"];
            lodge.CharityExamID = int.Parse(f["ceId"]);
            lodge.TotalRooms = 0;
            lodge.TotalSlots = 0;
            lodge.AvailableSlots = 0;
            db.Lodges.Add(lodge);
            db.SaveChanges();

            return RedirectToAction("ManageLodge", new { ceId = lodge.CharityExamID });
        }
        public ActionResult DeleteLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            int ceId = lodge.CharityExamID;
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
            return RedirectToAction("ManageLodge", new { ceId = ceId });
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
            lodge.Address = f["Address"];
            db.SaveChanges();

            return RedirectToAction("ManageLodge", new { ceId = lodge.CharityExamID });
        }
        public ActionResult DetailsLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }
        #endregion
        #region ROOMS
        public ActionResult ManageRoom(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
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
        public ActionResult DeleteRoom(int roomId)
        {
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == roomId);
            int lodgeId = room.LodgeID;

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalRooms -= 1;
            lodge.TotalSlots -= room.TotalSlots;
            lodge.AvailableSlots -= room.AvailableSlots;

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.TotalSlotsLodges -= room.TotalSlots;
            ce.AvailableSlotsLodges -= room.AvailableSlots;

            db.Rooms.Remove(room);
            db.SaveChanges();
            return RedirectToAction("ManageRoom", new { lodgeId = lodgeId });
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

        public ActionResult RemoveVolunteer(int voId)
        {
            var vo = db.Volunteers.SingleOrDefault(r => r.VolunteerID == voId);
            int ceId = vo.CharityExamID.Value;
            vo.CharityExamID = null;
            db.SaveChanges();
            return RedirectToAction("ManageVolunteer", new { ceId = ceId });
        }
        #endregion
        #region CANDIDATES
        public ActionResult ManageCandidate(int ceId)
        {
            var joinins = db.JoinsIns.Where(r => r.CharitiesExaminationsID == ceId);
            ViewData["ceId"] = ceId;
            return View(joinins);
        }

        public ActionResult RemoveCandidate(int joininId)
        {
            var joinin = db.JoinsIns.SingleOrDefault(r => r.JoinInID == joininId);
            int ceId = joinin.CharitiesExaminationsID;
            db.JoinsIns.Remove(joinin);
            db.SaveChanges();
            return RedirectToAction("ManageCandidate", new { ceId = ceId });
        }
        #endregion
    }
}