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

        public ActionResult ManageCar()
        {
            var _charityCar = new CharityCarModel();
            _charityCar.GetCarsList(2);
            return View("CarManagement", _charityCar);
        }

        public ActionResult ManageVolunteer()
        {
            var _charityVolunteer = new CharityVolunteerModel();
            _charityVolunteer.GetListVolunteer(2);
            return View("VolunteersManagement", _charityVolunteer);
        }

        public ActionResult AddCar()
        {
            var _charityCar = new CharityCarModel();
            _charityCar.CharityExamId = 2;
            return View("AddCar", _charityCar);
        }

        [HttpPost]
        public ActionResult AddCar(CharityCarModel model)
        {
            //model.AddNewCar(model.NumberPlate, model.TotalSlot, model.DriverName, model.DriverPhone, model.CharityExamId);
            model.AddNewCar(model);
            //return View("CarManagement");
           return RedirectToAction("ManageCar");

        }

        public ActionResult EditCar(int carId)
        {
            var _charityCar = new CharityCarModel();
            _charityCar.GetCarInfo(carId);
            return View("EditCar", _charityCar);
        }

        [HttpPost]
        public ActionResult EditCarInfo(CharityCarModel model, int carId)
        {
            model.EditCar(model.Car, model.CarId);
            return RedirectToAction("ManageCar");
        }

        public ActionResult DeleteCar(int carId)
        {
            var _charityCar = new CharityCarModel();
            _charityCar.DeleteCar(carId);
            return RedirectToAction("ManageCar");
        }

        public ActionResult RemoveVolunteer(int volunteerId)
        {
            var _charityVolunteer = new CharityVolunteerModel();
            _charityVolunteer.RemoveVolunteer(volunteerId);
            return RedirectToAction("ManageVolunteer");
        }

        public ActionResult AddCharityExam()
        {
            var exams = db.Examinations;
            return View(exams);
        }

        public ActionResult ManageCharityExam()
        {
            Account acc = (Account)Session["acc"];
            var listCE = db.ChairitiesExams.Where(r => r.Charity.AccountID == acc.AccountID);
            return View(listCE);
        }

        public ActionResult LoadCharityId()
        {
            var da = new CharityExamModel();
            da.GetListCharity();
            return View("AddCharityExam", da);
        }


        [HttpPost]
        public ActionResult AddNewCharityExam(CharityExamModel ce)
        {
            Account acc = (Account)Session["acc"];
            Charity cha = acc.Charities.SingleOrDefault(r => r.AccountID == acc.AccountID);
            if (ModelState.IsValid)
            {
                var ceModel = new CharityExamModel();
                ce.ChairitiesExam.ExamID = ce.ExamId;
                if (cha != null) ce.ChairitiesExam.CharityID = cha.CharityID;
                ce.ChairitiesExam.DistrictID = ce.DistrictId;
                ce.ChairitiesExam.AvailableSlotsLodges = ce.ChairitiesExam.TotalSlotsLodges;
                ce.ChairitiesExam.AvailableSlotsVehicles = ce.ChairitiesExam.TotalSlotsVehicles;
                ceModel.AddCharityExam(ce.ChairitiesExam);
                return RedirectToAction("ManageCharityExam");
            }

            return PartialView("CharityExamModel", ce);
        }
        public ActionResult DeleteCharityExam(int ceId)
        {
            var ceModel = new CharityExamModel();
            ceModel.DeleteCharityExam(ceId);
            return RedirectToAction("ManageCharityExam");
        }
        public ActionResult EditCharityExam(int ceId)
        {
            var ceModel = new CharityExamModel();
            ceModel.GetListCharity();
            ceModel.GetListDistrict();
            ceModel.GetListExam();
            ceModel.GetCharityExam(ceId);
            return View("EditCharityExam", ceModel);
        }

        public ActionResult EditCharityExamInfor(CharityExamModel model, int ceId)
        {
            Account acc = (Account)Session["acc"];
            Charity cha = acc.Charities.SingleOrDefault(r => r.AccountID == acc.AccountID);
            var ceModel = new CharityExamModel();
            ce.ChairitiesExam.ExamID = ce.ExamId;
            if (cha != null) ce.ChairitiesExam.CharityID = cha.CharityID;
            ce.ChairitiesExam.DistrictID = ce.DistrictId;
            ce.ChairitiesExam.AvailableSlotsLodges = ce.ChairitiesExam.TotalSlotsLodges;
            ce.ChairitiesExam.AvailableSlotsVehicles = ce.ChairitiesExam.TotalSlotsVehicles;
            ceModel.UpdateCharityExam(ce.ChairitiesExam, ce.CharityExamId);
            return RedirectToAction("ManageCharityExam");
        }

}
}
