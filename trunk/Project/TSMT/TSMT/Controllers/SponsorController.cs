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
        //
        // GET: /Sponsor/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ManagerFund()
        {
            DataAccess da = new DataAccess();
            List<Fund> list = da.SelectFunds();
            return View(list);
        }
        public ActionResult AddNewFund()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddNewFund(Fund fund)
        {
            DataAccess da = new DataAccess();
            if (ModelState.IsValid)
            {
                int result = da.InsertFund(fund);
                return RedirectToAction("ManagerFund");

            }
            return View(fund);
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
            CarDBModel da = new CarDBModel();
            List<Car> list = da.SelectCar();
            return View(list);
        }
        public ActionResult AddNewCar()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddNewCar(Car car)
        {
            CarDBModel da = new CarDBModel();
            if (ModelState.IsValid)
            {
                int result = da.InsertCar(car);
                return RedirectToAction("ManagerCar");

            }
            return View(car);
        }
        public ActionResult DeleteCar(int id)
        {
            CarDBModel da = new CarDBModel();
            int result = da.DeleteCar(id);
            return RedirectToAction("ManagerCar");
        }
    }
}
