﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;
namespace TSMT.Controllers
{
    [CheckAuth(3)]
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
            var cars = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID && r.IsApproved == true).ToList();
            var total = 0;
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

        public ActionResult ViewStatistic()
        {
            Account acc = (Account)Session["acc"];
            ViewData["CE"] = db.ChairitiesExams.ToList();
            ViewData["Exam"] = db.Examinations.ToList();
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
        public ActionResult ViewLodge(int id)
        {
            Lodge lod = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lod);
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
            lodge.Longitude = f["Longitude"];
            lodge.Latitude = f["Latitude"];
            lodge.Address = f["Address"];
            lodge.TotalSlotsInUsed = 0;
            lodge.TotalSlots = 0;
            lodge.AvailableSlots = 0;
            db.Lodges.Add(lodge);
            db.SaveChanges();

            return RedirectToAction("ManageRoom", new { id = lodge.LodgeID });

        }

        public ActionResult DeleteLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            var rooms = db.Rooms.Where(r => r.LodgeID == lodge.LodgeID);
            foreach (var room in rooms)
            {
                lodge.TotalSlots -= room.TotalSlots;
                lodge.AvailableSlots -= room.AvailableSlots;
                lodge.TotalSlotsInUsed -= room.TotalSlots;

                //lodge.ChairitiesExam.TotalSlotsLodges -= room.TotalSlots;
                //lodge.ChairitiesExam.AvailableSlotsLodges -= room.AvailableSlots;
                db.Rooms.Remove(room);
            }
            db.Lodges.Remove(lodge);
            db.SaveChanges();
            return RedirectToAction("ManageLodge");
        }
        public ActionResult DenieLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            lodge.CharityExamID = null;
            lodge.CharityID = null;
            lodge.TotalSlotsInUsed = lodge.TotalSlots;
            lodge.AvailableSlots = lodge.TotalSlots;
            var rooms = db.Rooms.Where(r => r.LodgeID == lodge.LodgeID);
            foreach (var room in rooms)
            {
                room.CharityExamID = null;

            }
            db.SaveChanges();
            return RedirectToAction("ManageLodge");
        }


        public ActionResult EditLodgeNotCe(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lodge);
        }
        [HttpPost]
        public ActionResult EditLodgeNotCe(FormCollection f)
        {
            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodge.Address = f["Address"];
            lodge.Longitude = f["Longitude"];
            lodge.Latitude = f["Latitude"];
            db.SaveChanges();
            return RedirectToAction("ManageLodge");

        }
        public ActionResult EditLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            Charity charity = db.Charities.FirstOrDefault(c => c.CharityID == lodge.CharityID);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == id).ToList();
            ViewData["CE"] = db.ChairitiesExams.ToList();
            List<Examination> exam = new List<Examination>();
            foreach (var item in ViewData["CE"] as IEnumerable<ChairitiesExam>)
            {
                exam.Add(item.Examination);
            }
            var listLodge = db.Lodges.Where(r => r.Address == lodge.Address).ToList();
            var listExam = exam.Distinct().OrderBy(e => e.Name).ToList();
            foreach (var lodgeE in listLodge)
            {
                if (lodgeE.ChairitiesExam != null)
                {
                    if (lodgeE.ChairitiesExam.Examination != null)
                    {
                        listExam.Remove(lodgeE.ChairitiesExam.Examination);
                    }
                }

            }
            ViewData["Exam"] = listExam;
            return View(lodge);
        }
        [HttpPost]
        public void EditLodge(int ceId, string roomId, int lodgeId, int cId)
        {

            string[] listStringId = roomId.Split('-');

            int[] listIntId = new int[listStringId.Length - 1];

            for (int i = 0; i < listStringId.Length - 1; i++)
            {
                listIntId[i] = int.Parse(listStringId[i]);
            }
            Lodge lodgeNew = new Lodge();
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodgeNew = lodge;
            lodgeNew.AvailableSlots = 0;
            lodgeNew.TotalSlotsInUsed = 0;
            //List<Room> listRoom = new List<Room>();
            //listRoom = lodge.Rooms.ToList();
            //foreach (var room in listRoom)
            //{
            //    room.CharityExamID = null;
            //    db.SaveChanges();
            //}
            lodgeNew.CharityExamID = ceId;
            lodgeNew.CharityID = cId;
            db.Lodges.Add(lodgeNew);
            db.SaveChanges();
            Lodge lodgeNewest = db.Lodges.FirstOrDefault(l => l.Address == lodgeNew.Address && l.CharityExamID == lodgeNew.CharityExamID);
            foreach (var i in listIntId)
            {
                Room roomNew = new Room();
                Room room = db.Rooms.SingleOrDefault(r => r.RoomID == i);

                roomNew = room;
                roomNew.LodgeID = lodgeNewest.LodgeID;
                roomNew.CharityExamID = lodgeNewest.CharityExamID;

                lodgeNewest.TotalSlotsInUsed += room.TotalSlots;
                lodgeNewest.AvailableSlots += room.TotalSlots;
                db.Rooms.Add(roomNew);
                db.SaveChanges();
            }
        }

        public ActionResult EditLodgeHasCe(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lodge);
        }
        [HttpPost]
        public ActionResult EditLodgeHasCe(FormCollection f)
        {
            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            lodge.Address = f["Address"];
            lodge.Longitude = f["Longitude"];
            lodge.Latitude = f["Latitude"];
            db.SaveChanges();
            return RedirectToAction("ManageLodge");

        }
        public ActionResult DetailsLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lodge);
        }
        #endregion
        #region ROOMS
        public ActionResult ManageRoom(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == id).ToList();
            ViewData["roomsCE"] = db.Rooms.Where(r => r.LodgeID == id && r.CharityExamID != null).ToList();
            return View(lodge);
        }
        public ActionResult AddRoom(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lodge);
        }
        [HttpPost]
        public ActionResult AddRoom(FormCollection f)
        {
            Room room = new Room();
            room.RoomName = f["RoomName"];
            room.LodgeID = int.Parse(f["lodgeId"]);
            room.Gender = null;
            room.TotalSlots = int.Parse(f["TotalSlots"]);
            room.AvailableSlots = room.TotalSlots;

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalSlots += room.TotalSlots;
            lodge.AvailableSlots += room.AvailableSlots;
            lodge.TotalSlotsInUsed += room.AvailableSlots;

            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges += room.TotalSlots;
            //ce.AvailableSlotsLodges += room.AvailableSlots;

            db.Rooms.Add(room);
            db.SaveChanges();
            return RedirectToAction("ManageRoom", new { id = room.LodgeID });
        }
        public ActionResult DeleteRoom(int id)
        {
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == id);

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalSlots -= room.TotalSlots;
            lodge.AvailableSlots -= room.AvailableSlots;
            lodge.TotalSlotsInUsed -= room.AvailableSlots;

            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges -= room.TotalSlots;
            //ce.AvailableSlotsLodges -= room.AvailableSlots;

            db.Rooms.Remove(room);
            db.SaveChanges();
            return RedirectToAction("ManageRoom", new { id = lodge.LodgeID });
        }
        public ActionResult EditRoom(int id)
        {
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == id);
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
            lodge.TotalSlotsInUsed -= room.AvailableSlots;
            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges -= room.TotalSlots;
            //ce.AvailableSlotsLodges -= room.AvailableSlots;

            room.TotalSlots = int.Parse(f["TotalSlots"]);
            room.RoomName = f["RoomName"];
            room.AvailableSlots = room.TotalSlots;

            lodge.TotalSlots += room.TotalSlots;
            lodge.AvailableSlots += room.AvailableSlots;
            lodge.TotalSlotsInUsed += room.AvailableSlots;

            //ce.TotalSlotsLodges += room.TotalSlots;
            //ce.AvailableSlotsLodges += room.AvailableSlots;

            db.SaveChanges();

            return RedirectToAction("ManageRoom", new { id = room.LodgeID });
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
            string[] listStringNumber = f["NumberPlate"].Split(' ');
            string numberplate = "";
            for (int i = 0; i < listStringNumber.Length; i++)
            {
                if (!listStringNumber[i].Equals(" "))
                {
                    numberplate += listStringNumber[i];
                }

            }
            car.SponsorID = sp.SponsorID;
            car.IsApproved = false;
            car.NumberPlate = numberplate.ToUpper();
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];
            db.Cars.Add(car);
            db.SaveChanges();

            return RedirectToAction("ManageCar");
        }
        public ActionResult SponsoredAllCar()
        {
            Account acc = (Account)Session["acc"];
            ViewData["Car"] = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID && r.CharityExamID == null).ToList();
            ViewData["CE"] = db.ChairitiesExams.ToList();
            ViewData["Exam"] = db.Examinations.ToList();
            return View();

        }
        [HttpPost]
        public void SponsoredAllCar(int ceId, string carId, int cId)
        {
            string[] listStringId = carId.Split('-');

            int[] listIntId = new int[listStringId.Length - 1];

            for (int i = 0; i < listStringId.Length - 1; i++)
            {
                listIntId[i] = int.Parse(listStringId[i]);
            }

            foreach (var i in listIntId)
            {
                Car car = db.Cars.SingleOrDefault(r => r.CarID == i);
                car.CharityID = cId;
                car.CharityExamID = ceId;
                db.SaveChanges();
            }
        }
        public ActionResult DeleteCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            //ChairitiesExam ce = car.ChairitiesExam;
            //ce.TotalSlotsVehicles -= car.TotalSlots;
            //ce.AvailableSlotsVehicles -= car.AvailableSlots;

            db.Cars.Remove(car);
            db.SaveChanges();
            return RedirectToAction("ManageCar");
        }
        public ActionResult DenieCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);
            car.CharityExamID = null;
            car.CharityID = null;
            db.SaveChanges();
            return RedirectToAction("ManageCar");
        }

        public ActionResult EditCarNotCe(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);
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

        public ActionResult EditCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);
            ViewData["CE"] = db.ChairitiesExams.ToList();
            Charity charity = db.Charities.FirstOrDefault(c => c.CharityID == car.CharityID);
            List<Examination> exam = new List<Examination>();
            foreach (var item in ViewData["CE"] as IEnumerable<ChairitiesExam>)
            {
                exam.Add(item.Examination);
            }
            var listCar = db.Cars.Where(r => r.NumberPlate == car.NumberPlate).ToList();
            var listExam = exam.Distinct().OrderBy(e => e.Name).ToList();
            foreach (var CarE in listCar)
            {
                if (CarE.ChairitiesExam != null)
                {
                    if (CarE.ChairitiesExam.Examination != null)
                    {
                        listExam.Remove(CarE.ChairitiesExam.Examination);
                    }
                }

            }
            ViewData["Exam"] = listExam;
            return View(car);


        }
        [HttpPost]
        public ActionResult EditCar(FormCollection f)
        {

            Car carNew = new Car();
            int carId = int.Parse(f["carId"]);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            carNew = car;
            carNew.CharityExamID = int.Parse(f["asd"]);
            carNew.CharityID = int.Parse(f["charityid"]);
            db.Cars.Add(carNew);
            db.SaveChanges();
            return RedirectToAction("ManageCar");
        }
        #endregion
        #region FUNDS
        public ActionResult ManageFund()
        {
            Account acc = (Account)Session["acc"];
            var funds = db.Funds.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            ViewData["funds"] = db.Funds.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            double totalFunds = 0;
            foreach (var item in (IEnumerable<Fund>)ViewData["funds"])
            {
                totalFunds = totalFunds + item.FundSponsored;
            }
            string s = totalFunds.ToString("##,###");
            ViewData["totalfunds"] = s;
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
            db.Funds.Add(fund);
            db.SaveChanges();

            return RedirectToAction("ManageFund");
        }
        public ActionResult DeleteFund(int id)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == id);

            db.Funds.Remove(fund);
            db.SaveChanges();
            return RedirectToAction("ManageFund");
        }
        public ActionResult EditFund(int id)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == id);
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
        public ActionResult DetailsFund(int id)
        {
            Fund fund = db.Funds.SingleOrDefault(r => r.FundID == id);
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


            switch (s)
            {
                case 1:
                    Fund fund = new Fund();
                    fund.SponsorID = sp.SponsorID;
                    fund.CharityExamID = int.Parse(f["asd"]);
                    fund.FundSponsored = float.Parse(f["FundSponsored"]);
                    db.Funds.Add(fund);
                    break;
                case 2:

                    int carId = int.Parse(f["carId"]);
                    Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
                    car.SponsorID = sp.SponsorID;
                    car.CharityExamID = int.Parse(f["asd"]);
                    car.CharityID = int.Parse(f["charityid"]);
                    car.NumberPlate = f["NumberPlate"];
                    car.TotalSlots = int.Parse(f["TotalSlots"]);
                    car.AvailableSlots = car.TotalSlots;
                    car.DriverName = f["DriverName"];
                    car.DriverPhone = f["DriverPhone"];


                    break;
                case 3:
                    Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
                    lodge.SponsorID = sp.SponsorID;
                    lodge.Address = f["Address"];
                    lodge.CharityExamID = int.Parse(f["asd"]);
                    lodge.CharityID = int.Parse(f["charityid"]);
                    lodge.TotalSlots = int.Parse(f["TotalSlotsL"]);
                    lodge.AvailableSlots = lodge.TotalSlots;

                    List<Room> listRoom = new List<Room>();
                    listRoom = lodge.Rooms.ToList();
                    foreach (var room in listRoom)
                    {

                        room.CharityExamID = int.Parse(f["asd"]);
                        db.SaveChanges();
                    }
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
        #endregion
        #region Ajax
        public JsonResult ResultAjax(int id)
        {
            var CE = from r in db.ChairitiesExams
                     where r.ExamID == id
                     select new
                     {
                         value = r.CharityExamID,
                         name = r.Charity.Name
                     };
            return Json(CE, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ResultAjaxCharityid(int id)
        {
            var cid = from r in db.ChairitiesExams
                      where r.CharityExamID == id
                      select new
                      {
                          value = r.CharityID,
                          charityid = r.CharityID

                      };
            return Json(cid, JsonRequestBehavior.AllowGet);
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
                            TotalRooms = r.Rooms.Count,
                            TotalSlotsL = r.TotalSlots,
                        };
            return Json(lodge, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult ShowCar(int ceId)
        {
            var car = from r in db.Cars
                      where r.CharityExamID == ceId && r.IsApproved == true
                      select new
                      {
                          value = r.CarID,
                          NumberPlate = r.NumberPlate,
                          TotalSlots = r.TotalSlots,
                          AvailableSlots = r.AvailableSlots,
                      };
            return Json(car, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult ShowLodge(int ceId)
        {
            var lodge = from r in db.Lodges
                        where r.CharityExamID == ceId && r.IsApproved == true
                        select new
                        {
                            value = r.LodgeID,
                            Address = r.Address,
                            TotalSlots = r.TotalSlots,
                            AvailableSlots = r.AvailableSlots,
                        };
            return Json(lodge, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ShowCarSponsor(int ceId)
        {
            Account acc = (Account)Session["acc"];
            var car = from r in db.Cars
                      where r.CharityExamID == ceId && r.IsApproved == true && r.Sponsor.AccountID == acc.AccountID
                      select new
                      {
                          value = r.CarID,
                          NumberPlate = r.NumberPlate,
                          TotalSlots = r.TotalSlots,
                          AvailableSlots = r.AvailableSlots,
                      };
            return Json(car, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ShowLodgeSponsor(int ceId)
        {
            Account acc = (Account)Session["acc"];
            var lodge = from r in db.Lodges
                        where r.CharityExamID == ceId && r.IsApproved == true && r.Sponsor.AccountID == acc.AccountID
                        select new
                        {
                            value = r.LodgeID,
                            Address = r.Address,
                            TotalSlots = r.TotalSlots,
                            AvailableSlots = r.AvailableSlots,
                        };
            return Json(lodge, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ShowFundSponsor(int ceId)
        {
            Account acc = (Account)Session["acc"];
            var fund = from r in db.Funds
                       where r.CharityExamID == ceId && r.IsApproved == true && r.Sponsor.AccountID == acc.AccountID
                       select new
                       {
                           value = r.FundID,
                           FundSponsored = r.FundSponsored,
                       };
            return Json(fund, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult CheckNumberPlate(string code)
        {
            bool isNotExisted = db.Cars.Count(r => r.NumberPlate == code) == 0;
            return Json(new { success = true, isNotExisted = isNotExisted });
        }
        #endregion
    }
}