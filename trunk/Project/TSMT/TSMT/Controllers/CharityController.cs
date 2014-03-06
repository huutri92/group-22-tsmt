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
        //
        // GET: /Charity/

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
            var da = new CharityExamModel();
            da.GetListCharity();
            da.GetListExam();
            return View(da);
            
        }
        public ActionResult EditCharityExam()
        {
            return View();
        }
        public ActionResult ManageCharityExam()
        {
            var da = new CharityExamModel();
            var list = da.SelectVenuesChairitiesExams();
            return View(list);
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
            if (ModelState.IsValid)
            {
                var ceModel = new CharityExamModel();
                ce.ChairitiesExam.ExamID = ce.ExamId;
                ce.ChairitiesExam.CharityID = ce.CharityId;
                ceModel.AddCharityExam(ce.ChairitiesExam);
                return RedirectToAction("ManageCharityExam");
            }

            return PartialView("CharityExamModel", ce);
        }
        public ActionResult DeleteCharityExam(int id)
        {
            var ceModel = new CharityExamModel();
            ceModel.DeleteCharityExam(id);
            return RedirectToAction("ManageCharityExam");
        }
        public ActionResult EditCharityExam(int ceId)
        {
            var ceModel = new CharityExamModel();
            ceModel.GetCharityExam(ceId);
            return View("EditCharityExam", ceModel);
        }

        public ActionResult EditCharityExamInfor(CharityExamModel model, int ceId)
        {
            model.UpdateCharityExam(model.ChairitiesExam, model.CharityExamId);
            return RedirectToAction("ManageCharityExam");
        }

}
}
