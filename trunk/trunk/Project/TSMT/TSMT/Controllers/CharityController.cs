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
    [CheckAuth(2)]
    public class CharityController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult Index()
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            return View();
        }

        #region CEs
        public ActionResult ManageCharityExam()
        {
            Account acc = (Account)Session["acc"];
            var ces = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            return View(ces);
        }
        public ActionResult AddCharityExam()
        {
            ViewData["exams"] = db.Examinations.ToList();
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
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
            //ce.CharityExamName = f["CharityExamName"];
            ce.TotalSlotsLodges = 0;
            ce.AvailableSlotsLodges = 0;
            ce.TotalSlotsVehicles = 0;
            ce.AvailableSlotsVehicles = 0;
            db.ChairitiesExams.Add(ce);
            db.SaveChanges();

            return RedirectToAction("ManageCharityExam");
        }
        public JsonResult DeleteCharityExam(int id)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            var lodges = db.Lodges.Where(r => r.CharityExamID == id);
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

            var cars = db.Cars.Where(r => r.CharityExamID == id);
            foreach (Car car in cars)
            {
                ce.TotalSlotsVehicles -= car.TotalSlots;
                ce.AvailableSlotsVehicles -= car.AvailableSlots;
                db.Cars.Remove(car);
            }

            db.ChairitiesExams.Remove(ce);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult ManageCE(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ViewData["exams"] = db.Examinations.ToList();
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            return View(ce);
        }
        public ActionResult EditCharityExam(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ViewData["exams"] = db.Examinations.ToList();
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            return View(ce);
        }
        [HttpPost]
        public ActionResult EditCharityExam(FormCollection f)
        {
            int id = int.Parse(f["id"]);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            ce.ExamID = int.Parse(f["ExamId"]);
            //ce.CharityExamName = f["CharityExamName"];
            db.SaveChanges();

            return RedirectToAction("ManageCharityExam");
        }
        public ActionResult DetailsCharityExam(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            return View(ce);
        }
        public ActionResult ManageCarCharity()
        {
            Account acc = (Account)Session["acc"];
            //var ces = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID);
            Charity charity = db.Charities.FirstOrDefault(r => r.AccountID == acc.AccountID);
            ViewData["carsOfCharity"] = db.Cars.Where(c => c.CharityID == charity.CharityID && c.SponsorID == null).ToList();
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            //ViewData["carsSponsor"] = db.Cars.Where(c => c.CharityID == charity.CharityID && c.SponsorID != null).ToList();
            return View(charity);
        }
        public ActionResult ManageLodgeCharity()
        {
            Account acc = (Account)Session["acc"];
            //var ces = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID);
            Charity charity = db.Charities.FirstOrDefault(r => r.AccountID == acc.AccountID);
            ViewData["lodgesOfCharity"] = db.Lodges.Where(c => c.CharityID == charity.CharityID && c.SponsorID == null).ToList();
            ViewData["lodgesSponsor"] = db.Lodges.Where(c => c.CharityID == charity.CharityID && c.SponsorID != null).ToList();
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            return View(charity);
        }
        #endregion
        #region CARS
        public ActionResult ManageCar(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            @ViewData["id"] = ce.CharityExamID;
            //ViewData["cars"] = db.Cars.Where(r => r.CharityExamID == ceId).ToList();
            ViewData["carsOfCharity"] = ce.Cars.Where(c => c.SponsorID == null);
            ViewData["carsSponsor"] = ce.Cars.Where(e => e.SponsorID != null);
            return View(ce);
        }
        //public ActionResult AddCar(int id)
        //{
        //    ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
        //    return View(ce);
        //}
        public ActionResult AddCar(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Charity charity = db.Charities.SingleOrDefault(r => r.CharityID == id);
            ViewData["CharityExam"] = db.ChairitiesExams.Where(c => c.CharityID == id).OrderBy(r => r.Examination.Name).ToList();
            return View(charity);
        }
        [HttpPost]
        public ActionResult AddCar(FormCollection f)
        {
            Car car = new Car();
            car.CharityID = int.Parse(f["id"]);
            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];
            if (int.Parse(f["CharityExamID"]) != 0)
            {
                car.CharityExamID = int.Parse(f["CharityExamID"]);
            }
            car.IsApproved = true;
            db.Cars.Add(car);

            if (car.CharityExamID != null)
            {
                ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == car.CharityExamID);
                ce.TotalSlotsVehicles += car.TotalSlots;
                ce.AvailableSlotsVehicles += car.AvailableSlots;
                db.SaveChanges();
                //CreateScheduleCar(car.CarID);
            }
            else
            {
                db.SaveChanges();
            }



            return RedirectToAction("ManageCarCharity");
        }

        public void CreateScheduleCar(int id) // carId
        {
            Car c = db.Cars.SingleOrDefault(r => r.CarID == id);

            foreach (ScheduleExam se in c.ChairitiesExam.Examination.ScheduleExams)
            {
                //SchedulesCar sc = new SchedulesCar();
                //sc.CarID = id;
                //sc.Day = se.Day;
                //sc.ArriveTime = se.BeginHour.AddHours(-1);
                //sc.PickUpTime = se.EndHour.AddHours(-0.5);
                //db.SchedulesCars.Add(sc);
            }

            db.SaveChanges();
        }
        public JsonResult DeleteCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            //ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(c => c.CharityExamID == car.CharityExamID);
            //ce.TotalSlotsVehicles -= car.TotalSlots;
            //ce.AvailableSlotsVehicles -= car.AvailableSlots;

            //if (ce.TotalSlotsVehicles <= 0)
            //{
            //    ce.TotalSlotsVehicles = 0;
            //}
            //if (ce.AvailableSlotsVehicles <= 0)
            //{
            //    ce.AvailableSlotsVehicles = 0;
            //}
            db.Cars.Remove(car);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditCar(int carId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            return View(car);
        }
        [HttpPost]
        public ActionResult EditCar(FormCollection f)
        {
            int carId = int.Parse(f["carId"]);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);

            if (car.CharityExamID != null)
            {
                ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(c => c.CharityExamID == car.CharityExamID);
                ce.TotalSlotsVehicles -= car.TotalSlots;
                ce.AvailableSlotsVehicles -= car.AvailableSlots;
            }


            car.NumberPlate = f["NumberPlate"];
            car.TotalSlots = int.Parse(f["TotalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            car.DriverName = f["DriverName"];
            car.DriverPhone = f["DriverPhone"];

            if (car.CharityExamID != null)
            {
                ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(c => c.CharityExamID == car.CharityExamID);
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
            }


            db.SaveChanges();

            //if (car.CharityExamID != null)
            //{
            //    CreateScheduleCar(car.CarID);
            //}
            return RedirectToAction("ManageCarCharity");
        }

        public JsonResult ApproveCar(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(c => c.CharityExamID == car.CharityExamID);
            ce.TotalSlotsVehicles += car.TotalSlots;
            ce.AvailableSlotsVehicles += car.AvailableSlots;
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
            car.CharityID = null;
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
            car.CharityID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult RemoveCarOutOfCe(int id)
        {
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);
            ChairitiesExam ce = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == car.CharityExamID);
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
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Car car = db.Cars.SingleOrDefault(c => c.CarID == carId);
            if (car.Sponsor != null) ViewData["sponsor"] = car.Sponsor.Account.Profile.Lastname + " " + car.Sponsor.Account.Profile.Firstname;

            ViewData["ceId"] = car.CharityExamID;
            return View(car);

        }

        public ActionResult DetailsCarCharity(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Car car = db.Cars.SingleOrDefault(c => c.CarID == id);
            //if (car.Sponsor != null) ViewData["sponsor"] = car.Sponsor.Account.Profile.Lastname + " " + car.Sponsor.Account.Profile.Firstname;

            //ViewData["ceId"] = car.CharityExamID;
            return View(car);
        }

        public ActionResult AssignCarCE(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Car car = db.Cars.FirstOrDefault(c => c.CarID == id);
            Charity charity = db.Charities.FirstOrDefault(c => c.CharityID == car.CharityID);
            ViewData["CharityExam"] = charity.ChairitiesExams.ToList();
            return View(car);
        }

        [HttpPost]
        public ActionResult AssignCarCE(FormCollection f)
        {
            int carId = int.Parse(f["carId"]);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == carId);
            if (f["CharityExamID"] != null)
            {
                car.CharityExamID = int.Parse(f["CharityExamID"]);
                ChairitiesExam ce = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == car.CharityExamID);
                ce.TotalSlotsVehicles += car.TotalSlots;
                ce.AvailableSlotsVehicles += car.AvailableSlots;
            }
            else
            {
                car.CharityExamID = null;
            }
            db.SaveChanges();
            return RedirectToAction("ManageCarCharity");
        }

        public ActionResult AssignCarsToCe()
        {
            Account acc = (Account)Session["acc"];
            Charity charity = db.Charities.FirstOrDefault(c => c.AccountID == acc.AccountID);
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ViewData["Cars"] = db.Cars.Where(o => o.CharityID == charity.CharityID && o.CharityExamID == null).ToList();
            ViewData["CE"] = charity.ChairitiesExams.ToList();
            List<Examination> exam = new List<Examination>();
            foreach (var item in ViewData["CE"] as IEnumerable<ChairitiesExam>)
            {
                exam.Add(item.Examination);
            }
            ViewData["Exam"] = exam.Distinct().OrderBy(e => e.Name).ToList();
            return View(charity);
        }

        [HttpPost]
        public void AssignCarstoCe(int eId, string carId, int cId)
        {

            string[] listStringId = carId.Split('-');

            int[] listIntId = new int[listStringId.Length - 1];

            for (int i = 0; i < listStringId.Length - 1; i++)
            {
                listIntId[i] = int.Parse(listStringId[i]);
            }


            ChairitiesExam cExam = new ChairitiesExam();
            cExam = db.ChairitiesExams.FirstOrDefault(c => c.ExamID == eId && c.CharityID == cId);
            foreach (var i in listIntId)
            {
                Car car = db.Cars.SingleOrDefault(r => r.CarID == i);
                car.CharityExamID = cExam.CharityExamID;
                cExam.TotalSlotsVehicles += car.TotalSlots;
                cExam.AvailableSlotsVehicles += car.AvailableSlots;
                //lodge.TotalSlotsInUsed += room.TotalSlots;
                //lodge.AvailableSlots += room.AvailableSlots;
                db.SaveChanges();
            }

        }

        public ActionResult ChooseCarForCe(int id)
        {
            ChairitiesExam cExam = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == id);
            Account acc = (Account)Session["acc"];
            Charity charity = db.Charities.FirstOrDefault(c => c.AccountID == acc.AccountID);
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ViewData["Cars"] = db.Cars.Where(o => o.CharityID == charity.CharityID && o.CharityExamID == null).ToList();

            return View(cExam);
        }

        [HttpPost]
        public void ChooseCarForCe(int eId, string carId, int cId)
        {
            string[] listStringId = carId.Split('-');

            int[] listIntId = new int[listStringId.Length - 1];

            for (int i = 0; i < listStringId.Length - 1; i++)
            {
                listIntId[i] = int.Parse(listStringId[i]);
            }

            ChairitiesExam cExam = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == eId && c.CharityID == cId);
            foreach (var i in listIntId)
            {
                Car car = db.Cars.SingleOrDefault(r => r.CarID == i);
                car.CharityExamID = cExam.CharityExamID;
                cExam.TotalSlotsVehicles += car.TotalSlots;
                cExam.AvailableSlotsVehicles += car.AvailableSlots;
                //lodge.TotalSlotsInUsed += room.TotalSlots;
                //lodge.AvailableSlots += room.AvailableSlots;
                db.SaveChanges();
            }
            //return RedirectToAction("ManageCar", new {ceId = eId});

        }

        #endregion
        #region LODGES
        public ActionResult ManageLodge(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            ViewData["lodgesOfCharity"] = db.Lodges.Where(r => r.CharityExamID == id && r.SponsorID == null).ToList();
            ViewData["lodgesSponsor"] = db.Lodges.Where(r => r.CharityExamID == id && r.SponsorID != null).ToList();
            ViewData["ceId"] = id;
            return View(ce);
        }
        public ActionResult ViewLodge(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Lodge lod = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            return View(lod);
        }
        public ActionResult AddLodge(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Charity charity = db.Charities.SingleOrDefault(r => r.CharityID == id);
            ViewData["CharityExam"] = db.ChairitiesExams.Where(c => c.CharityID == id).ToList();
            return View(charity);
        }
        [HttpPost]
        public ActionResult AddLodge(FormCollection f)
        {
            Lodge lodge = new Lodge();
            //if (f["CharityExamID"] != null)
            //{
            //    lodge.CharityExamID = int.Parse(f["CharityExamID"]);
            //}
            lodge.Longitude = f["Longitude"];
            lodge.Latitude = f["Latitude"];
            lodge.Address = f["Address"];
            lodge.CharityID = int.Parse(f["ceId"]);
            lodge.TotalRooms = 0;
            lodge.TotalSlots = 0;
            lodge.AvailableSlots = 0;
            lodge.TotalSlotsInUsed = 0;
            lodge.IsApproved = true;
            //if (lodge.CharityExamID != null)
            //{
            //    ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == lodge.CharityExamID);
            //    ce.TotalSlotsLodges += lodge.TotalSlots;
            //    ce.AvailableSlotsLodges += lodge.AvailableSlots;
            //    db.SaveChanges();

            //}
            db.Lodges.Add(lodge);
            db.SaveChanges();

            return RedirectToAction("ManageLodgeCharity");
        }
        public JsonResult DeleteLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            int? ceId = lodge.CharityExamID;

            var rooms = db.Rooms.Where(r => r.LodgeID == lodge.LodgeID);
            if (rooms != null) {
                foreach (var room in rooms)
                {
                    //lodge.TotalRooms -= 1;
                    //lodge.TotalSlots -= room.TotalSlots;
                    //lodge.AvailableSlots -= room.AvailableSlots;

                    //lodge.ChairitiesExam.TotalSlotsLodges -= room.TotalSlots;
                    //lodge.ChairitiesExam.AvailableSlotsLodges -= room.AvailableSlots;
                    db.Rooms.Remove(room);
                }
            }

            //if (lodge.TotalRooms < 0)
            //{
            //    lodge.TotalRooms = 0;
            //}
            //if (lodge.TotalSlots < 0)
            //{
            //    lodge.TotalSlots = 0;
            //}
            //if (lodge.AvailableSlots < 0)
            //{
            //    lodge.AvailableSlots = 0;
            //}
            //if (lodge.ChairitiesExam.TotalSlotsLodges < 0)
            //{
            //    lodge.ChairitiesExam.TotalSlotsLodges = 0;
            //}
            //if (lodge.ChairitiesExam.AvailableSlotsLodges < 0)
            //{
            //    lodge.ChairitiesExam.AvailableSlotsLodges = 0;
            //}
            db.Lodges.Remove(lodge);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditLodge(int lodgeId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            //ViewData["CharityExam"] = lodge.ChairitiesExam;
            return View(lodge);
        }
        [HttpPost]
        public ActionResult EditLodge(FormCollection f)
        {
            int lodgeId = int.Parse(f["lodgeId"]);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            //if (f["CharityExamID"] != null)
            //{
            //    lodge.CharityExamID = int.Parse(f["CharityExamID"]);
            //}
            lodge.Longitude = f["Longitude"];
            lodge.Latitude = f["Latitude"];
            lodge.Address = f["Address"];
            db.SaveChanges();

            return RedirectToAction("ManageLodgeCharity");
        }
        public ActionResult DetailsLodge(int lodgeId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            return View(lodge);
        }

        public ActionResult DetailLodgeCE(int lodgeId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId && r.CharityExamID == lodge.CharityExamID).ToList();
            ViewData["ceId"] = lodge.CharityExamID;
            return View(lodge);
        }

        public JsonResult ApproveLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.AvailableSlotsLodges += lodge.AvailableSlots;
            ce.TotalSlotsLodges += lodge.TotalSlotsInUsed;
            lodge.IsApproved = true;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult DenieLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            //int? ceId = lodge.CharityExamID;
            lodge.CharityExamID = null;
            lodge.CharityID = null;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult RemoveLodge(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);

            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.AvailableSlotsLodges -= lodge.AvailableSlots;
            ce.TotalSlotsLodges -= lodge.TotalSlotsInUsed;
            //int? ceId = lodge.CharityExamID;
            lodge.CharityExamID = null;
            lodge.IsApproved = false;
            lodge.CharityID = null;

            List<Room> ListRoom = new List<Room>();
            ListRoom = lodge.Rooms.Where(r => r.CharityExamID != null).ToList();
            foreach (var room in ListRoom)
            {
                room.CharityExamID = null;
                db.SaveChanges();
            }
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public JsonResult RemoveLodgeOutCe(int id)
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            ChairitiesExam ce = lodge.ChairitiesExam;
            ce.AvailableSlotsLodges -= lodge.AvailableSlots;
            ce.TotalSlotsLodges -= lodge.TotalSlotsInUsed;
            List<Room> ListRoom = new List<Room>();
            ListRoom = lodge.Rooms.Where(r => r.CharityExamID != null).ToList();
            foreach (var room in ListRoom)
            {
                room.CharityExamID = null;
                db.SaveChanges();
            }
            lodge.CharityExamID = null;
            lodge.TotalSlotsInUsed = lodge.TotalSlots;
            lodge.AvailableSlots = lodge.TotalSlots;
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }

        public ActionResult AssignLodgetoCe(int lodgeId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            Charity charity = db.Charities.FirstOrDefault(c => c.CharityID == lodge.CharityID);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            ViewData["CE"] = charity.ChairitiesExams.ToList();
            List<Examination> exam = new List<Examination>();
            foreach (var item in ViewData["CE"] as IEnumerable<ChairitiesExam>)
            {
                exam.Add(item.Examination);
            }
            ViewData["Exam"] = exam.Distinct().OrderBy(e => e.Name).ToList();
            return View(lodge);
        }

        //public JsonResult ResultAjax(int id, int chairtyId)
        //{
        //    var CE = from r in db.ChairitiesExams
        //             where r.ExamID == id && r.CharityID == chairtyId
        //             select new
        //             {
        //                 value = r.CharityExamID,
        //                 name = r.CharityExamName
        //             };
        //    return Json(CE, JsonRequestBehavior.AllowGet);
        //}

        [HttpPost]
        public void AssignLodgetoCeC(int eId, string roomId, int lodgeId, int cId)
        {

            string[] listStringId = roomId.Split('-');

            int[] listIntId = new int[listStringId.Length - 1];

            for (int i = 0; i < listStringId.Length - 1; i++)
            {
                listIntId[i] = int.Parse(listStringId[i]);
            }

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ChairitiesExam cExam = new ChairitiesExam();
            cExam = db.ChairitiesExams.FirstOrDefault(c => c.ExamID == eId && c.CharityID == cId);
            lodge.CharityExamID = cExam.CharityExamID;
            lodge.CharityID = cId;
            lodge.TotalSlotsInUsed = 0;
            lodge.AvailableSlots = 0;
            db.SaveChanges();
            foreach (var i in listIntId)
            {
                Room room = db.Rooms.SingleOrDefault(r => r.RoomID == i);
                room.CharityExamID = cExam.CharityExamID;

                cExam.TotalSlotsLodges += room.TotalSlots;
                cExam.AvailableSlotsLodges += room.AvailableSlots;
                lodge.TotalSlotsInUsed += room.TotalSlots;
                lodge.AvailableSlots += room.AvailableSlots;
                db.SaveChanges();
            }

        }

        public ActionResult ChooseLodgeForCe(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Charity charity = db.Charities.FirstOrDefault(c => c.AccountID == acc.AccountID);
            ViewData["Lodge"] = db.Lodges.Where(l => l.CharityID == charity.CharityID && l.CharityExamID == null).ToList();
            ViewData["ceId"] = id;
            return View(charity);
        }

        public ActionResult ChooseRoomsForCe(int lodgeId, int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ViewData["ceId"] = id;
            ChairitiesExam cExam = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == id);
            ViewData["ExamName"] = cExam.Examination.Name;
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            Lodge lodge = db.Lodges.FirstOrDefault(l => l.LodgeID == lodgeId);
            return View(lodge);
        }

        [HttpPost]
        public void ChooseRoomsForCe(int eId, string roomId, int lodgeId, int cId)
        {
            string[] listStringId = roomId.Split('-');

            int[] listIntId = new int[listStringId.Length - 1];

            for (int i = 0; i < listStringId.Length - 1; i++)
            {
                listIntId[i] = int.Parse(listStringId[i]);
            }

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ChairitiesExam cExam = new ChairitiesExam();
            cExam = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == eId && c.CharityID == cId);
            lodge.CharityExamID = cExam.CharityExamID;
            lodge.CharityID = cId;
            lodge.TotalSlotsInUsed = 0;
            lodge.AvailableSlots = 0;
            db.SaveChanges();
            foreach (var i in listIntId)
            {
                Room room = db.Rooms.SingleOrDefault(r => r.RoomID == i);
                room.CharityExamID = cExam.CharityExamID;

                cExam.TotalSlotsLodges += room.TotalSlots;
                cExam.AvailableSlotsLodges += room.AvailableSlots;
                lodge.TotalSlotsInUsed += room.TotalSlots;
                lodge.AvailableSlots += room.AvailableSlots;
                db.SaveChanges();
            }
        }
        #endregion
        #region ROOMS
        public ActionResult ManageRoom(int lodgeId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == lodgeId);
            ViewData["rooms"] = db.Rooms.Where(r => r.LodgeID == lodgeId).ToList();
            ViewData["ceId"] = lodge.CharityExamID;
            return View(lodge);
        }
        public ActionResult AddRoom(int lodgeId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
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
            lodge.AvailableSlots += room.TotalSlots;
            lodge.TotalSlotsInUsed += room.TotalSlots;
            //lodge.AvailableSlots += room.AvailableSlots;
            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges += room.TotalSlots;
            //ce.AvailableSlotsLodges += room.AvailableSlots;

            db.Rooms.Add(room);
            db.SaveChanges();

            return RedirectToAction("DetailsLodge", new { lodgeId = room.LodgeID });
        }
        public JsonResult DeleteRoom(int id)
        {
            Room room = db.Rooms.SingleOrDefault(r => r.RoomID == id);
            int lodgeId = room.LodgeID;

            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == room.LodgeID);
            lodge.TotalRooms -= 1;
            lodge.TotalSlots -= room.TotalSlots;
            lodge.AvailableSlots -= room.AvailableSlots;
            lodge.TotalSlotsInUsed -= room.TotalSlots;
            if (lodge.TotalSlots < 0) lodge.TotalSlots = 0;
            if (lodge.AvailableSlots < 0) lodge.AvailableSlots = 0;
            if (lodge.CharityExamID != null && room.CharityExamID != null)
            {
                ChairitiesExam ce = lodge.ChairitiesExam;
                ce.TotalSlotsLodges -= room.TotalSlots;
                ce.AvailableSlotsLodges -= room.AvailableSlots;
                if (ce.TotalSlotsLodges < 0) ce.TotalSlotsLodges = 0;
                if (ce.AvailableSlotsLodges < 0) ce.AvailableSlotsLodges = 0;
            }


            db.Rooms.Remove(room);
            db.SaveChanges();
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditRoom(int roomId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
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
            lodge.TotalSlotsInUsed -= room.TotalSlots;

            //ChairitiesExam ce = lodge.ChairitiesExam;
            //ce.TotalSlotsLodges -= room.TotalSlots;
            //ce.AvailableSlotsLodges -= room.AvailableSlots;

            room.TotalSlots = int.Parse(f["TotalSlots"]);
            room.AvailableSlots = room.TotalSlots;

            lodge.TotalSlots += room.TotalSlots;
            lodge.AvailableSlots += room.AvailableSlots;
            lodge.TotalSlotsInUsed += room.TotalSlots;

            //ce.TotalSlotsLodges += room.TotalSlots;
            //ce.AvailableSlotsLodges += room.AvailableSlots;

            db.SaveChanges();

            return RedirectToAction("DetailsLodge", new { lodgeId = room.LodgeID });
        }
        #endregion
        #region SPONSORS
        public ActionResult ManageSponsor(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            var cars = db.Cars.Where(r => r.CharityExamID == id && r.SponsorID != null);
            var lodges = db.Lodges.Where(r => r.CharityExamID == id && r.SponsorID != null);
            var funds = db.Funds.Where(r => r.CharityExamID == id);
            ViewData["cars"] = cars;
            ViewData["lodges"] = lodges;
            ViewData["funds"] = funds;
            ViewData["ceId"] = id;
            return View();
        }
        #endregion
        #region VOLUNTEERS
        public ActionResult ManageVolunteer(int id) // ceID
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);

            var pes = db.ParticipantVolunteers.Where(r => r.CharityExamID == id);
            ViewData["ceId"] = id;
            return View(pes);
        }
        [HttpPost]
        public JsonResult RemoveVolunteer(int id)
        {
            var pe = db.ParticipantVolunteers.SingleOrDefault(r => r.ParticipantVolunteerID == id);
            db.ParticipantVolunteers.Remove(pe);
            db.SaveChanges();
            return Json(new { success = true });
        }
        [HttpPost]
        public JsonResult ApproveVolunteer(int id) // peId
        {
            var pe = db.ParticipantVolunteers.SingleOrDefault(r => r.ParticipantVolunteerID == id);
            pe.IsApproved = true;
            db.SaveChanges();
            return Json(new { success = true });
        }
        [HttpPost]
        public JsonResult DenieVolunteer(int id) // peId
        {
            var pe = db.ParticipantVolunteers.SingleOrDefault(r => r.ParticipantVolunteerID == id);
            db.ParticipantVolunteers.Remove(pe);
            db.SaveChanges();
            return Json(new { success = true });
        }
        public ActionResult DetailsVolunteer(int voId)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Volunteer volunteer = db.Volunteers.SingleOrDefault(c => c.VolunteerID == voId);
            //ViewData["ceId"] = volunteer.CharityExamID;
            return View(volunteer);

        }
        #endregion
        #region CANDIDATES
        public ActionResult ManageCandidate(int id) // ceId
        {
            Account acc = (Account)Session["acc"];
            ViewData["ceId"] = id;
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            return View();
        }
        [HttpPost]
        public JsonResult GetDataManageCandidate(int id)
        {
            List<DataManageCandidate> results = new List<DataManageCandidate>();
            DataManageCandidate record = new DataManageCandidate();
            var eps = db.ExaminationsPapers.Where(r => r.CharityExamID == id);
            foreach (var item in eps)
            {
                record = new DataManageCandidate();
                record.lname = item.Candidate.Account.Profile.Lastname;
                //+" " + item.Candidate.Account.Profile.Middlename;
                record.fname = item.Candidate.Account.Profile.Firstname;
                record.lodge = item.Lodge.Address;
                record.venue = item.Venue.Address;
                results.Add(record);
            }

            return Json(new { success = true, data = results });
        }
        public JsonResult RemoveCandidate(int id)
        {
            ExaminationsPaper ep = db.ExaminationsPapers.SingleOrDefault(r => r.ExamPaperID == id);

            //var ceId = joinin.CharitiesExaminationsID;
            //db.JoinsIns.Remove(joinin);
            ep.CharityExamID = null;
            db.SaveChanges();
            //return RedirectToAction("ManageCandidate", new { ceId = ceId });
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

        public ActionResult ManageFunds(int id)
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            ViewData["funds"] = db.Funds.Where(r => r.CharityExamID == id).ToList();
            double totalFunds = 0;
            foreach (var item in (IEnumerable<Fund>)ViewData["funds"])
            {
                totalFunds = totalFunds + item.FundSponsored;
            }
            string s = totalFunds.ToString("##,###");
            ViewData["totalfunds"] = s;
            ViewData["ceId"] = id;
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
        public ActionResult AssignRoom(int id) // ceID
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            ViewData["ceId"] = id;
            return View();
        }
        [HttpPost]
        public JsonResult GetDataAssignRoom(int id) // ceID
        {
            bool IsAssigned = false;
            DataAssignRoom record = new DataAssignRoom();
            List<DataAssignRoom> results = new List<DataAssignRoom>();
            foreach (ExaminationsPaper ep in db.ExaminationsPapers.Where(r => r.CharityExamID == id))
            {
                record = new DataAssignRoom();
                record.lname = ep.Candidate.Account.Profile.Lastname;
                //+" " + ep.Candidate.Account.Profile.Middlename;
                record.fname = ep.Candidate.Account.Profile.Firstname;
                record.lodge = ep.Lodge.Address;
                record.group = ep.GroupID == null ? "Chưa có nhóm" : ep.GroupID.ToString();
                record.room = ep.RoomID == null ? "Chưa sắp phòng" : ep.Room.RoomName;
                results.Add(record);

                if (!IsAssigned) IsAssigned = ep.RoomID != null;
            }
            return Json(new { success = true, data = results, IsAssigned = IsAssigned });
        }
        public ActionResult AssignToRoom(int id)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);

            var lodges = ce.Lodges; // lodges of ce
            bool[] genders = { false, true }; // gender, high priority for girls
            List<Group> groups = new List<Group>();
            List<Room> rooms = new List<Room>();
            List<ExaminationsPaper> eps = new List<ExaminationsPaper>();
            List<ExaminationsPaper> tmp = new List<ExaminationsPaper>();

            foreach (Lodge lodge in lodges) // for each lodge
            {
                foreach (bool gender in genders) // for each gender
                {
                    // groups of lodge
                    groups = (from r in db.Groups
                              where r.Owner.LodgeRegisteredID == lodge.LodgeID // registered to lodge
                                 && r.Owner.Candidate.Account.Profile.Gender == gender // current gender
                              select r).OrderByDescending(r => r.Quantity).ToList(); // order descending by number of memebers

                    // assign groups first
                    foreach (Group g in groups)
                    {
                        eps = g.ExaminationsPapers.ToList(); // candidates of group

                        if (!g2r(eps, lodge.LodgeID, gender)) // cannot fit the whole group
                        {
                            if (!rg2r(eps, lodge.LodgeID, gender))
                            {
                                // OMG!
                                db.SaveChanges();
                                return RedirectToAction("AssignRoom", new { id = id });
                            }
                        }
                    }

                    // candidates of lodge
                    eps = (from r in lodge.ExaminationsPapers
                           where r.GroupID == null // not have group
                              && r.Candidate.Account.Profile.Gender == gender // current gender
                           select r).ToList();

                    // assign groups first
                    foreach (ExaminationsPaper ep in eps)
                    {
                        tmp = new List<ExaminationsPaper>();
                        tmp.Add(ep);

                        if (!g2r(tmp, lodge.LodgeID, gender)) // cannot fit one
                        {
                            // OMG!
                            db.SaveChanges();
                            return RedirectToAction("AssignRoom", new { id = id });
                        }
                    }
                }
            }

            db.SaveChanges();
            return RedirectToAction("AssignRoom", new { id = id });
        }
        public ActionResult ResetRooms(int id, bool ReAssign)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            var lodges = ce.Lodges; // lodges of ce
            foreach (Lodge lodge in lodges)
            {
                foreach (ExaminationsPaper ep in lodge.ExaminationsPapers) ep.RoomID = null;
                foreach (Room r in lodge.Rooms) { r.AvailableSlots = r.TotalSlots; r.Gender = null; }
            }

            db.SaveChanges();
            if (!ReAssign) return RedirectToAction("AssignRoom", new { id = id });
            else return RedirectToAction("AssignToRoom", new { id = id });
        }
        protected void swapRoom(List<int> rooms, int i, int j)
        {
            int tmp = rooms[i];
            rooms[i] = rooms[j];
            rooms[j] = tmp;
        }
        protected List<int> sortRooms(List<int> rooms, bool gender) // lodgeID
        {
            Room r1 = new Room();
            Room r2 = new Room();
            int tmp;
            for (int i = 0; i < rooms.Count - 1; ++i)
            {
                tmp = rooms[i];
                r1 = db.Rooms.SingleOrDefault(r => r.RoomID == tmp);
                for (int j = i + 1; j < rooms.Count; ++j)
                {
                    tmp = rooms[j];
                    r2 = db.Rooms.SingleOrDefault(r => r.RoomID == tmp);
                    if (r1.Gender == gender && r2.Gender == gender) // both are same gender
                    {
                        // order by available slots
                        if (r1.AvailableSlots < r2.AvailableSlots) swapRoom(rooms, i, j);
                    }
                    else if (r1.Gender != gender && r2.Gender != gender) // no rooms matched gender 
                    {
                        // order by available slots
                        if (r1.AvailableSlots < r2.AvailableSlots) swapRoom(rooms, i, j);
                    }
                    else // only one room matched gender
                    {
                        // r1 does not matched gender --> put it behind
                        if (r1.Gender != gender) swapRoom(rooms, i, j);
                    }
                }
            }
            return rooms;
        }
        protected List<int> getRooms(int id, bool gender) // lodgeID
        {
            Lodge lodge = db.Lodges.SingleOrDefault(r => r.LodgeID == id);
            List<int> rooms = lodge.Rooms.Where(r => r.Gender == null || r.Gender == gender).Select(r => r.RoomID).ToList();
            return sortRooms(rooms, gender);
        }
        protected bool g2r(List<ExaminationsPaper> eps, int lodgeID, bool gender)
        {
            Room r = new Room();
            var rooms = getRooms(lodgeID, gender); // get list of rooms suitable (gender, available slots, ...)
            foreach (int rID in rooms)
            {
                r = db.Rooms.SingleOrDefault(re => re.RoomID == rID);
                if (r.AvailableSlots >= eps.Count) // fit it all
                {
                    foreach (ExaminationsPaper ep in eps) ep.RoomID = rID;
                    r.Gender = gender;
                    r.AvailableSlots -= eps.Count;
                    return true;
                }
            }
            return false;
        }
        protected bool rg2r(List<ExaminationsPaper> eps, int lodgeID, bool gender)
        {
            Room r = new Room();
            var rooms = getRooms(lodgeID, gender); // get list of rooms suitable (gender, available slots, ...)
            foreach (int rID in rooms)
            {
                r = db.Rooms.SingleOrDefault(re => re.RoomID == rID);
                if (r.AvailableSlots > 0) // possible to use
                {
                    // split into 02 groups:
                    // group 1: number of members equal to room's available slots.
                    List<ExaminationsPaper> eps01 = new List<ExaminationsPaper>();
                    for (int i = 0; i < r.AvailableSlots; ++i) eps01.Add(eps[i]);
                    // group 2: the rest.
                    List<ExaminationsPaper> eps02 = new List<ExaminationsPaper>();
                    for (int i = r.AvailableSlots; i < eps.Count; ++i) eps02.Add(eps[i]);

                    if (!g2r(eps01, lodgeID, gender))  // cannot fit this small group
                    {
                        // try split the group more
                        if (!rg2r(eps01, lodgeID, gender)) return false;
                    }

                    if (!g2r(eps02, lodgeID, gender)) // cannot fit this small group
                    {
                        // try split the group more
                        if (!rg2r(eps02, lodgeID, gender)) return false;
                    }

                    return true;
                }
            }
            return false;
        }
        #endregion
        #region ASSIGN-CARS
        public ActionResult AssignCar(int id) // ceID
        {
            ViewData["ceId"] = id;
            return View();
        }
        [HttpPost]
        public JsonResult GetDataAssignCar(int id) // ceID
        {
            bool IsAssigned = false;
            DataAssignCar record = new DataAssignCar();
            List<DataAssignCar> results = new List<DataAssignCar>();
            foreach (ExaminationsPaper ep in db.ExaminationsPapers.Where(r => r.CharityExamID == id))
            {
                record = new DataAssignCar();
                record.lname = ep.Candidate.Account.Profile.Lastname;
                record.fname = ep.Candidate.Account.Profile.Firstname;
                record.lodge = ep.Lodge.Address;
                record.venue = ep.Venue.Address;
                if (ep.CarID == null && ep.ParticipantVolunteerID == null)
                {
                    record.status = "Chưa được sắp xếp";
                }
                else
                {
                    record.status = "Đã được sắp xếp";
                    if (ep.CarID != null)
                    {
                        record.note = "Xe: " + ep.Car.NumberPlate;
                    }
                    else
                    {
                        record.note = "TNV: " + ep.ParticipantVolunteer.Volunteer.Account.Profile.Firstname;
                    }
                }
                record.actions = ep.CarID == null ? "" : "<a href='/Charity/DisplayRoute/" + ep.CarID + "'>Xem đường đi</a>";
                results.Add(record);

                if (!IsAssigned) IsAssigned = ep.CarID != null;
            }
            return Json(new { success = true, data = results, IsAssigned = IsAssigned });
        }
        public ActionResult AssignToCar(int id)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);

            var lodges = ce.Lodges.OrderByDescending(r => r.ExaminationsPapers.Count); // lodges of ce order descending by number of candidates
            List<int> venueIDs = new List<int>();
            List<ExaminationsPaper> eps = new List<ExaminationsPaper>();

            foreach (Lodge lodge in lodges)
            {
                // ds dia diem thi cua cac thi sinh o lodge nay.
                venueIDs = lodge.ExaminationsPapers.Select(r => r.VenueID).Distinct().ToList();
                // sort
                venueIDs = sortVenues(venueIDs, lodge.LodgeID);

                foreach (int veID in venueIDs)
                {
                    eps = db.ExaminationsPapers.Where(r => r.LodgeRegisteredID == lodge.LodgeID && r.VenueID == veID).ToList();

                    if (!v2c(eps, lodge.LodgeID, id))
                        if (!rv2c(eps, lodge.LodgeID, id))
                        {
                            db.SaveChanges();
                            return RedirectToAction("AssignCar", new { id = id });
                        }
                }
            }
            db.SaveChanges();

            //ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id); // new infor
            //SchedulesCar sc = new SchedulesCar();
            //foreach (Car c in ce.Cars.Where(r => r.ExaminationsPapers.Count > 0))
            //{
            //    foreach (ScheduleExam se in c.ChairitiesExam.Examination.ScheduleExams)
            //    {
            //        sc = new SchedulesCar();
            //        sc.CarID = c.CarID;
            //        sc.Day = se.Day;
            //        sc.ArriveTime = se.BeginHour.AddHours(-1);
            //        sc.PickUpTime = se.EndHour.AddHours(-0.5);
            //        db.SchedulesCars.Add(sc);
            //    }
            //}
            db.SaveChanges();
            return RedirectToAction("AssignCar", new { id = id });
        }
        public ActionResult ResetCars(int id, bool ReAssign)
        {
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == id);
            var cars = ce.Cars;
            foreach (Car c in cars) { c.AvailableSlots = c.TotalSlots; c.LodgeID = null; }

            ParticipantVolunteer pe = new ParticipantVolunteer();
            var eps = ce.ExaminationsPapers;
            foreach (ExaminationsPaper ep in eps)
            {
                ep.CarID = null;
                if (ep.ParticipantVolunteerID != null)
                {
                    pe = db.ParticipantVolunteers.SingleOrDefault(r => r.ParticipantVolunteerID == ep.ParticipantVolunteerID);
                    pe.ExamPaperID = null;
                    ep.ParticipantVolunteerID = null;
                }
            }

            db.SaveChanges();
            if (!ReAssign) return RedirectToAction("AssignCar", new { id = id });
            else return RedirectToAction("AssignToCar", new { id = id });
        }
        protected List<int> sortVenues(List<int> vs, int lodgeID)
        {
            int tmp;
            int v1Quantity;
            int v2Quantity;
            for (int i = 0; i < vs.Count - 1; ++i)
            {
                tmp = vs[i];
                v1Quantity = db.Venues.SingleOrDefault(r => r.VenueID == tmp).ExaminationsPapers.Count(r => r.LodgeRegisteredID == lodgeID);
                for (int j = i + 1; j < vs.Count; ++j)
                {
                    tmp = vs[j];
                    v2Quantity = db.Venues.SingleOrDefault(r => r.VenueID == tmp).ExaminationsPapers.Count(r => r.LodgeRegisteredID == lodgeID);
                    if (v1Quantity < v2Quantity)
                    {
                        tmp = vs[i];
                        vs[i] = vs[j];
                        vs[j] = tmp;
                    }
                }
            }
            return vs;
        }
        protected void swapCar(List<int> cs, int i, int j)
        {
            int tmp = cs[i];
            cs[i] = cs[j];
            cs[j] = tmp;
        }
        protected List<int> sortCars(List<int> cs, int lodgeID)
        {
            Car c1 = new Car();
            Car c2 = new Car();
            int tmp;

            for (int i = 0; i < cs.Count - 1; ++i)
            {
                tmp = cs[i];
                c1 = db.Cars.SingleOrDefault(r => r.CarID == tmp);
                for (int j = i + 1; j < cs.Count; ++j)
                {
                    tmp = cs[j];
                    c2 = db.Cars.SingleOrDefault(r => r.CarID == tmp);
                    if (c1.LodgeID != null && c2.LodgeID != null)
                    { if (c1.AvailableSlots < c2.AvailableSlots) swapCar(cs, i, j); }
                    else if (c1.LodgeID != null || c2.LodgeID != null)
                    { if (c1.LodgeID == null) swapCar(cs, i, j); }
                    else if (c1.AvailableSlots < c2.AvailableSlots) swapCar(cs, i, j);
                }
            }

            return cs;
        }
        protected List<int> getCars(int lodgeID, int ceID)
        {
            List<int> cs = db.Cars.Where(r => r.CharityExamID == ceID && (r.LodgeID == null || r.LodgeID == lodgeID)).Select(r => r.CarID).ToList();
            return sortCars(cs, lodgeID);
        }
        protected bool v2c(List<ExaminationsPaper> eps, int lodgeID, int ceID)
        {
            Car c = new Car();
            List<int> cs = getCars(lodgeID, ceID);
            foreach (int carID in cs)
            {
                c = db.Cars.SingleOrDefault(r => r.CarID == carID);
                if (c.AvailableSlots >= eps.Count)
                {
                    foreach (ExaminationsPaper ep in eps) ep.CarID = carID;
                    c.LodgeID = lodgeID;
                    c.AvailableSlots -= eps.Count;
                    return true;
                }
            }

            // if cannot use cars, try volunteers.
            bool IsAssigned = false;
            ChairitiesExam ce = db.ChairitiesExams.SingleOrDefault(r => r.CharityExamID == ceID);
            foreach (ParticipantVolunteer pe in ce.ParticipantVolunteers)
            {
                if (pe.ExamPaperID == null) // available
                {
                    foreach (ExaminationsPaper ep in eps)
                        if (ep.CarID == null && ep.ParticipantVolunteerID == null) // this ep need to be assigned
                        {
                            ep.ParticipantVolunteerID = pe.ParticipantVolunteerID;
                            pe.ExamPaperID = ep.ExamPaperID;
                            IsAssigned = true;


                            break;
                        }
                }
            }

            return IsAssigned;
        }
        protected bool rv2c(List<ExaminationsPaper> eps, int lodgeID, int ceID)
        {
            Car c = new Car();
            List<int> cs = getCars(lodgeID, ceID);
            foreach (int carID in cs)
            {
                c = db.Cars.SingleOrDefault(r => r.CarID == carID);
                if (c.AvailableSlots > 0)
                {
                    List<ExaminationsPaper> eps01 = new List<ExaminationsPaper>();
                    for (int i = 0; i < c.AvailableSlots; ++i) eps01.Add(eps[i]);
                    List<ExaminationsPaper> eps02 = new List<ExaminationsPaper>();
                    for (int i = c.AvailableSlots; i < eps.Count; ++i) eps02.Add(eps[i]);

                    if (!v2c(eps01, lodgeID, ceID))
                        if (!rv2c(eps01, lodgeID, ceID)) return false;

                    if (!v2c(eps02, lodgeID, ceID))
                        if (!rv2c(eps02, lodgeID, ceID)) return false;

                    return true;
                }
            }
            return false;
        }
        #endregion
        #region Manual-Assign
        //public ActionResult ModelManualAssignToRoom()
        //{
        //    ViewData["listRoom"] = db.Rooms.ToList();
        //    ViewData["listCandidate"] = db.ExaminationsPapers.Where(r => r.RoomID == null).ToList();
        //    return View();
        //}
        public ActionResult ManualAssignToRoom()
        {
            //ViewData["listRoom"] = db.Rooms.Where(r=>r.LodgeID == lodgeId).ToList();
            //ViewData["listCandidate"] = db.ExaminationsPapers.Where(r => r.RoomID == null).ToList();
            ViewData["listLodges"] = db.Lodges.ToList();
            return View();
        }



        public ActionResult ManualAssignToCar()
        {
            ViewData["listCar"] = db.Cars.ToList();
            ViewData["listVolunteer"] = db.Volunteers.ToList();
            ViewData["listCandidate"] = db.ExaminationsPapers.Where(r => r.CarID == null && r.ParticipantVolunteerID == null).ToList();
            return View();
        }

        public JsonResult ResultAjaxLodgeRoom(int id=4)
        {
            var exPaper = from r in db.Rooms
                          where r.LodgeID == id
                          select new
                          {
                              value = r.RoomID,
                              name = r.RoomName,
                              capacity = r.AvailableSlots
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ResultAjaxLodgeCandidate(int id)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.LodgeRegisteredID == id && r.RoomID == null
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ResultAjaxRoom(int id, int lodgeId)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.RoomID == id && r.LodgeRegisteredID == lodgeId
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }
        public JsonResult ResultAjaxCar(int id)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.CarID == id
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }
        public JsonResult ResultAjaxVolunteer(int id)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.ParticipantVolunteerID == id
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult EditAssignRoom(int caId, int roomId)
        {
            var expp = db.ExaminationsPapers.SingleOrDefault(r => r.CandidateID == caId);
            if (roomId == 0)
            {
                expp.RoomID = null;
            }
            else
            {
                expp.RoomID = roomId;
            }
            db.SaveChanges();
            return Json("");
        }
        public JsonResult EditAssignCar(int caId, int carId, int voId)
        {
            var expp = db.ExaminationsPapers.SingleOrDefault(r => r.CandidateID == caId);
            if (carId == 0 && voId == 0)
            {
                expp.CarID = null;
                expp.ParticipantVolunteerID = null;
            }
            else if (carId != 0 && voId == 0)
            {
                expp.CarID = carId;
                expp.ParticipantVolunteerID = null;
            }
            else
            {
                expp.CarID = null;
                expp.ParticipantVolunteerID = voId;
            }
            db.SaveChanges();
            return Json("");
        }
        #endregion
        public ActionResult DisplayRoute(int id) // carId
        {
            Account acc = (Account)Session["acc"];
            ViewData["CharityExamSide"] = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID).OrderBy(c => c.Examination.Name);
            Car car = db.Cars.SingleOrDefault(r => r.CarID == id);

            Lodge lodge = new Lodge();
            ExaminationsPaper examinationsPaper = new ExaminationsPaper();
            examinationsPaper = car.ExaminationsPapers.FirstOrDefault();
            lodge = db.Lodges.FirstOrDefault(l => l.LodgeID == examinationsPaper.LodgeRegisteredID);

            List<string> address = new List<string>();
            address.Add(lodge.Address);

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
        public ActionResult DisplayRouteVolunteer(int pvId)
        {
            ParticipantVolunteer pe = db.ParticipantVolunteers.FirstOrDefault(s => s.ParticipantVolunteerID == pvId);
            if (pe != null)
            {
                ViewData["StarEndPoint"] = pe.StartEndPoint;
                ViewData["WayPoint"] = pe.WayPoint;
                ViewData["ScheduleId"] = pvId;
                ViewData["WayPointEdit"] = "";
            }

            return View();
        }
        [HttpPost]
        public JsonResult SaveRoute(int scheduleId, string waypoints)
        {
            //SchedulesVolunteer schedulesVolunteer = db.SchedulesVolunteers.FirstOrDefault(s => s.ScheduleVolunteerID == scheduleId);

            //schedulesVolunteer.WayPoint = waypoints;
            //db.SaveChanges();
            //ViewData["WayPoint"] = schedulesVolunteer.WayPoint;
            return Json(new { success = true });
        }
    }
}