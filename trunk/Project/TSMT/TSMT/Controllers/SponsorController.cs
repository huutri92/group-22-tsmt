using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;
namespace TSMT.Controllers
{
    public class SponsorController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();
        public ActionResult Index()
        {
            return View();
        }

        #region LODGES
        public ActionResult ManageLodge()
        {
            Account acc = (Account)Session["acc"];
            var lodges = db.Lodges.Where(r => r.Sponsor.AccountID == acc.AccountID);
            return View(lodges);
        }
        public ActionResult AddLodge()
        {
            var ces = db.ChairitiesExams.ToList();
            return View(ces);
        }
        [HttpPost]
        public ActionResult AddLodge(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Sponsor sp = db.Sponsors.SingleOrDefault(r => r.AccountID == acc.AccountID);

            Lodge lodge = new Lodge();
            lodge.SponsorID = sp.SponsorID;
            lodge.Address = f["Address"];
            lodge.CharityExamID = int.Parse(f["ceId"]);
            lodge.TotalRooms = 0;
            lodge.TotalSlots = 0;
            lodge.AvailableSlots = 0;
            db.Lodges.Add(lodge);
            db.SaveChanges();

            return RedirectToAction("ManageLodge");
        }
        public ActionResult DeleteLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
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
            return RedirectToAction("ManageLodge");
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

            return RedirectToAction("ManageLodge");
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

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalRooms -= 1;
            lodge.TotalSlots -= room.TotalSlots;
            lodge.AvailableSlots -= room.AvailableSlots;

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.TotalSlotsLodges -= room.TotalSlots;
            ce.AvailableSlotsLodges -= room.AvailableSlots;

            db.Rooms.Remove(room);
            db.SaveChanges();
            return RedirectToAction("ManageRoom", new { lodgeId = lodge.LodgeID });
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
        #region CARS
        public ActionResult ManageCar()
        {
            Account acc = (Account)Session["acc"];
            var cars = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            return View(cars);
        }
        public ActionResult AddCar()
        {
            var ces = db.ChairitiesExams.ToList();
            return View(ces);
        }
        [HttpPost]
        public ActionResult AddCar(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Sponsor sp = db.Sponsors.SingleOrDefault(r => r.AccountID == acc.AccountID);

            Car car = new Car();
            car.SponsorID = sp.SponsorID;
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

            return RedirectToAction("ManageCar");
        }
        public ActionResult DeleteCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

            ChairitiesExam ce = car.ChairitiesExam;
            ce.TotalSlotsVehicles -= car.TotalSlots;
            ce.AvailableSlotsVehicles -= car.AvailableSlots;

            db.Cars.Remove(car);
            db.SaveChanges();
            return RedirectToAction("ManageCar");
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

            return RedirectToAction("ManageCar");
        }
        #endregion
        #region FUNDS
        #endregion
    }
}