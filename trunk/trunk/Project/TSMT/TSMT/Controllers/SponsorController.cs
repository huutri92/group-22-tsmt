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

        public ActionResult SponsorResource()
        {
            return View();
        }

        #region Statistic
        public ActionResult SponsorCarStatistic()
        {
            Account acc = (Account)Session["acc"];
            var cars = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID && r.IsApproved==true).ToList();
            var total=0;
            var totalAva = 0;
            foreach (var i in cars)
            {
                total += i.TotalSlots;
                totalAva += i.AvailableSlots;
            }
            ViewData["Ava"] = totalAva;
            ViewData["Used"] = total - totalAva;
            return View();
        }

        public ActionResult SponsorLodgeStatistic()
        {
            Account acc = (Account)Session["acc"];
            var lodges = db.Lodges.Where(r => r.Sponsor.AccountID == acc.AccountID && r.IsApproved == true).ToList();
            var total = 0;
            var totalAva = 0;
            foreach (var i in lodges)
            {
                total += i.TotalSlots;
                totalAva += i.AvailableSlots;
            }
            ViewData["Ava"] = totalAva;
            ViewData["Used"] = total - totalAva;
            return View();
        }
        #endregion
        #region LODGES
        //[CheckAuth("~/Account/Login",4, "/" )]
        public ActionResult ManageLodge()
        {
            Account acc = (Account)Session["acc"];
            var lodges = db.Lodges.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            foreach (var i in lodges)
            {

                if (i.ChairitiesExam == null)
                {
                    var chairitiesExam = new ChairitiesExam();
                    chairitiesExam.Examination = new Examination();
                    i.ChairitiesExam = chairitiesExam;
                }
            }
            ViewData["LodgesNotSponsored"] = db.Lodges.Where(r => r.Sponsor.AccountID == acc.AccountID && r.CharityExamID == null);
            ViewData["LodgesSponsored"] = db.Lodges.Where(r => r.Sponsor.AccountID == acc.AccountID && r.CharityExamID != null);
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
            //lodge.CharityExamID = int.Parse(f["ceId"]);
            lodge.TotalRooms = 0;
            lodge.TotalSlots = 0;
            lodge.AvailableSlots = 0;
            db.Lodges.Add(lodge);
            db.SaveChanges();

            return RedirectToAction("ManageRoom", new { lodgeId = lodge.LodgeID });

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

                //lodge.ChairitiesExam.TotalSlotsLodges -= room.TotalSlots;
                //lodge.ChairitiesExam.AvailableSlotsLodges -= room.AvailableSlots;
                db.Rooms.Remove(room);
            }
            db.Lodges.Remove(lodge);
            db.SaveChanges();
            return RedirectToAction("ManageLodge");
        }
        public ActionResult DenieLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodge.CharityExamID = null;
            db.SaveChanges();
            return RedirectToAction("ManageLodge");
        }
        

        public ActionResult EditLodgeNotCe(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }
        [HttpPost]
        public ActionResult EditLodgeNotCe(FormCollection f)
        {
            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodge.Address = f["Address"];
            db.SaveChanges();
            return RedirectToAction("ManageLodge");

        }
        public ActionResult EditLodge(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            ViewData["CE"] = db.ChairitiesExams.ToList();
            ViewData["Exam"] = db.Examinations.ToList();
            return View(lodge);
        }
        [HttpPost]
        public ActionResult EditLodge(FormCollection f)
        {
            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodge.CharityExamID = int.Parse(f["asd"]);
            lodge.Address = f["Address"];
            db.SaveChanges();
            return RedirectToAction("ManageLodge");

        }

        public ActionResult EditLodgeHasCe(int lodgeId)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            return View(lodge);
        }
        [HttpPost]
        public ActionResult EditLodgeHasCe(FormCollection f)
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

            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges += room.TotalSlots;
            //ce.AvailableSlotsLodges += room.AvailableSlots;

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

            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges -= room.TotalSlots;
            //ce.AvailableSlotsLodges -= room.AvailableSlots;

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

            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges -= room.TotalSlots;
            //ce.AvailableSlotsLodges -= room.AvailableSlots;

            room.TotalSlots = int.Parse(f["TotalSlots"]);
            room.RoomName = f["RoomName"];
            room.AvailableSlots = room.TotalSlots;

            lodge.TotalSlots += room.TotalSlots;
            lodge.AvailableSlots += room.AvailableSlots;

            //ce.TotalSlotsLodges += room.TotalSlots;
            //ce.AvailableSlotsLodges += room.AvailableSlots;

            db.SaveChanges();

            return RedirectToAction("ManageRoom", new { lodgeId = room.LodgeID });
        }
        #endregion
        #region CARS
        public ActionResult ManageCar()
        {
            Account acc = (Account)Session["acc"];
            var cars = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            foreach (var i in cars)
            {
                
                if (i.ChairitiesExam == null)
                {
                    var chairitiesExam = new ChairitiesExam();
                    chairitiesExam.Examination = new Examination();
                    i.ChairitiesExam = chairitiesExam;
                }
            }
            ViewData["CarNotSponsored"] = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID && r.CharityExamID == null);
            ViewData["CarSponsored"] = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID && r.CharityExamID != null);
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
            //car.CharityExamID = int.Parse(f["ceId"]);
            car.IsApproved = false;
            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];

            //ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == car.CharityExamID);
            //ce.TotalSlotsVehicles += car.TotalSlots;
            //ce.AvailableSlotsVehicles += car.AvailableSlots;

            db.Cars.Add(car);
            db.SaveChanges();

            return RedirectToAction("ManageCar");
        }
        public ActionResult DeleteCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

            //ChairitiesExam ce = car.ChairitiesExam;
            //ce.TotalSlotsVehicles -= car.TotalSlots;
            //ce.AvailableSlotsVehicles -= car.AvailableSlots;

            db.Cars.Remove(car);
            db.SaveChanges();
            return RedirectToAction("ManageCar");
        }
        public ActionResult DenieCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            car.CharityExamID = null;
            db.SaveChanges();
            return RedirectToAction("ManageCar");
        }
        
        public ActionResult EditCarNotCe(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            return View(car);
        }
        [HttpPost]
        public ActionResult EditCarNotCe(FormCollection f)
        {
            int carId = int.Parse(f["carId"]);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];
            db.SaveChanges();

            return RedirectToAction("ManageCar");
        }

        public ActionResult EditCar(int carId)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            ViewData["CE"] = db.ChairitiesExams.ToList();
            ViewData["Exam"] = db.Examinations.ToList();
            return View(car);

        }
        [HttpPost]
        public ActionResult EditCar(FormCollection f)
        {
            int carId = int.Parse(f["carId"]);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

            //ChairitiesExam ce = car.ChairitiesExam;
            //ce.TotalSlotsVehicles -= car.TotalSlots;
            //ce.AvailableSlotsVehicles -= car.AvailableSlots;
            car.CharityExamID = int.Parse(f["asd"]);

            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];

            //ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == car.CharityExamID);
            //ce.TotalSlotsVehicles += car.TotalSlots;
            //ce.AvailableSlotsVehicles += car.AvailableSlots;
            //ce.TotalSlotsVehicles += car.TotalSlots;
            //ce.AvailableSlotsVehicles += car.AvailableSlots;

            db.SaveChanges();

            return RedirectToAction("ManageCar");
        }
        #endregion
        #region FUNDS
        public ActionResult ManageFund()
        {
            Account acc = (Account)Session["acc"];
            var funds = db.Funds.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            return View(funds);
        }
       
        public ActionResult AddFund()
        {
            var ces = db.ChairitiesExams.ToList();
            ViewData["CE"] = db.ChairitiesExams.ToList();
            ViewData["Exam"] = db.Examinations.ToList();
            return View(ces);
        }

        [HttpPost]
        public ActionResult AddFund(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Sponsor sp = db.Sponsors.SingleOrDefault(r => r.AccountID == acc.AccountID);

            Fund fund = new Fund();
            fund.SponsorID = sp.SponsorID;
            fund.CharityExamID = int.Parse(f["asd"]);
            //string s = f["FundSponsored"];
            //s.Replace(",", string.Empty);
            fund.FundSponsored = float.Parse(f["FundSponsored"]);
            fund.IsOnlineFunding = bool.Parse(f["IsOnline"]);
            db.Funds.Add(fund);
            db.SaveChanges();

            return RedirectToAction("ManageFund");
        }
        public ActionResult DeleteFund(int fundId)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == fundId);

            db.Funds.Remove(fund);
            db.SaveChanges();
            return RedirectToAction("ManageFund");
        }
        public ActionResult EditFund(int fundId)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == fundId);
            return View(fund);
        }
        [HttpPost]
        public ActionResult EditFund(FormCollection f)
        {
            int fundId = int.Parse(f["fundId"]);
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == fundId);
            fund.FundSponsored = float.Parse(f["FundSponsored"]);
            db.SaveChanges();
            return RedirectToAction("ManageFund");
        }
        public ActionResult DetailsFund(int fundId)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == fundId);
            return View(fund);
        }
        #endregion
        #region RESOURCE
        public ActionResult AddResource()
        {
            Account acc = (Account)Session["acc"];
            ViewData["CE"] = db.ChairitiesExams.ToList();
            ViewData["Exam"] = db.Examinations.ToList();
            ViewData["Car"] = db.Cars.Where(r => r.CharityExamID == null && r.Sponsor.AccountID == acc.AccountID).ToList();
            ViewData["Lodge"] = db.Lodges.Where(r => r.CharityExamID == null && r.Sponsor.AccountID == acc.AccountID).ToList();
            return View();
        }
        [HttpPost]
        public ActionResult AddResource(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Sponsor sp = db.Sponsors.SingleOrDefault(r => r.AccountID == acc.AccountID);

            int s = int.Parse(f["resource"]);
            int lodgeId = int.Parse(f["lodgeId"]);
           
            int carId = int.Parse(f["carId"]);
            switch (s)
            {
                case 1:
                    Fund fund = new Fund();
                    fund.SponsorID = sp.SponsorID;
                    fund.CharityExamID = int.Parse(f["asd"]);
                    fund.FundSponsored = float.Parse(f["FundSponsored"]);
                    fund.IsOnlineFunding = bool.Parse(f["IsOnline"]);
                    db.Funds.Add(fund);
                    break;
                case 2:
                    if (carId == 0)
                    {
                        Car car = new Car();
                        car.SponsorID = sp.SponsorID;
                        car.CharityExamID = int.Parse(f["asd"]);
                        car.NumberPlate = f["NumberPlate"];
                        car.TotalSlots = int.Parse(f["TotalSlots"]);
                        car.AvailableSlots = car.TotalSlots;
                        car.DriverName = f["DriverName"];
                        car.DriverPhone = f["DriverPhone"];
                        db.Cars.Add(car);
                    }
                    else
                    {
                        Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
                        car.SponsorID = sp.SponsorID;
                        car.CharityExamID = int.Parse(f["asd"]);
                        car.NumberPlate = f["NumberPlate"];
                        car.TotalSlots = int.Parse(f["TotalSlots"]);
                        car.AvailableSlots = car.TotalSlots;
                        car.DriverName = f["DriverName"];
                        car.DriverPhone = f["DriverPhone"];
                    }

                    break;
                case 3:
                    Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
                    lodge.SponsorID = sp.SponsorID;
                    lodge.Address = f["Address"];
                    lodge.CharityExamID = int.Parse(f["asd"]);
                    lodge.TotalRooms = int.Parse(f["TotalRooms"]);
                    lodge.TotalSlots = int.Parse(f["TotalSlotsL"]);
                    lodge.AvailableSlots = lodge.TotalSlots;
                    break;

            }
            db.SaveChanges();

            if (s == 1)
            {
                return RedirectToAction("ManageFund");
            }
            else
            {
                if (s == 2)
                {
                    return RedirectToAction("ManageCar");
                }
                else
                {
                    return RedirectToAction("ManageLodge");
                }
            }

        }
        public JsonResult ResultAjax(int id)
        {
            var CE = from r in db.ChairitiesExams
                     where r.ExamID == id
                     select new
                     {
                         value = r.CharityExamID,
                         name = r.CharityExamName
                     };
            return Json(CE, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ResultAjaxcar(int id)
        {
            var car = from r in db.Cars
                      where r.CarID == id
                      select new
                      {
                          value = r.CarID,
                          NumberPlate = r.NumberPlate,
                          TotalSlots = r.TotalSlots,
                          DriverName = r.DriverName,
                          DriverPhone = r.DriverPhone

                      };
            return Json(car, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ResultAjaxlodge(int id)
        {
            var lodge = from r in db.Lodges
                      where r.LodgeID == id
                      select new
                      {
                          value = r.LodgeID,

                          Address = r.Address,
                          TotalRooms = r.TotalRooms,
                          TotalSlotsL = r.TotalSlots,
                      };
            return Json(lodge, JsonRequestBehavior.AllowGet);
        }


        #endregion
    }
}