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
        public ActionResult ManagerFund()
        {
            Account acc = (Account)Session["acc"];
            var funds = db.Funds.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            return View(funds);
        }
        public ActionResult AddNewFund()
        {
            var listFunds = db.ChairitiesExams.ToList();
            return View(listFunds);
        }

        [HttpPost]
        public ActionResult AddNewFund(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Sponsor sp = acc.Sponsors.SingleOrDefault(r => r.AccountID == acc.AccountID);
            Fund fund = new Fund();
            fund.CharityExamID = int.Parse(f["CharityName"]);
            fund.SponsorID = sp.SponsorID;
            fund.FundSponsored = int.Parse(f["fundSponsored"]);
            db.Funds.Add(fund);
            db.SaveChanges();
            return RedirectToAction("ManagerFund");
        }
        public ActionResult DeleteFund(int id)
        {
            DataAccess da = new DataAccess();
            int result = da.DeleteFund(id);
            return RedirectToAction("ManagerFund");
        }

        //public ActionResult EditFund(int id)
        //{
        //    var _charityFund = new DataAccess();
        //    _charityFund.GetFundInfo(id);
        //    return View("EditFund", _charityFund);
        //}
        
        public ActionResult ManagerCar()
        {
            Account acc = (Account)Session["acc"];
            var cars = db.Cars.Where(r => r.Sponsor.AccountID == acc.AccountID).ToList();
            return View(cars);
        }

        public ActionResult AddNewCar()
        {
            var listCE = db.ChairitiesExams.ToList();
            return View(listCE);
        }

        [HttpPost]
        public ActionResult AddNewCar(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
            Sponsor sp = acc.Sponsors.SingleOrDefault(r => r.AccountID == acc.AccountID);

            Car car = new Car();
            car.CharityExamID = int.Parse(f["CharityName"]);
            car.SponsorID = sp.SponsorID;
            car.TotalSlots = int.Parse(f["totalSlots"]);
            car.AvailableSlots = car.TotalSlots;
            db.Cars.Add(car);
            db.SaveChanges();
            return RedirectToAction("ManagerCar");
        }
        public ActionResult DeleteCar(int id)
        {
            CarDBModel da = new CarDBModel();
            int result = da.DeleteCar(id);
            return RedirectToAction("ManagerCar");
        }
        
    }
}
