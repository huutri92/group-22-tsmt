using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
		public ActionResult ManagerExam()
        {
            var da = new ManageExamModel();
            var list = da.SelectExams();
            return View(list);
        }

        public ActionResult AddExam()
        {
            return View();
        }
        public ActionResult EditExam()
        {
            return View();
        }

        public ActionResult ManageUniversity()
        {
            var da = new ManageUniersityModel();
            var list = da.SelectUniversities();
            return View(list);
        }

        public ActionResult AddUniversity()
        {
            return View();
        }
        public ActionResult EditUniversity()
        {
            return View();
        }

        public ActionResult ManageVenue()
        {
            var da = new ManageVenueModel();
            var list = da.SelectVenues();
            return View(list);
        }
        public ActionResult AddVenue()
        {
            return View();
        }
		
        public ActionResult Index()
        {
            return View("ControlPanelPage");
        }

        public ActionResult ManageUniversityExam()
        {
            var _adminUniExam = new AdminUniExaModel();
            _adminUniExam.GetUniversityAndExam();
            return View("AddUniverExam",_adminUniExam);
        }

        [HttpPost]
        public ActionResult AddUniverExam(AdminUniExaModel model)
        {
            model.AddUniversityExam(model.UniversityId, model.ExaminationId);
            return RedirectToAction("ManageUniversityExam", model);
        }
	

	 public ActionResult ManagerCategory()
        {
            DataAccess da = new DataAccess();
            List<Category> list = da.SelectCategories();
            return View(list);
        }
        public ActionResult AddNewCategory()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddNewCategory(Category cat)
        {
            DataAccess da = new DataAccess();
            if (ModelState.IsValid)
            {
                int result = da.InsertCategory(cat);
                return RedirectToAction("ManagerCategory");

            }
            return View(cat);
        }
        public ActionResult DeleteCategory(int id)
        {
            DataAccess da = new DataAccess();
            int result = da.DeleteCategory(id);
            return RedirectToAction("ManagerCategory");
        }

        //public ActionResult EditCategory()
        //{
            

        //    return RedirectToAction("ManagerCategory");
        //}
        public ActionResult EditCategory(int id)
        {
            var _charityCateogory = new DataAccess();
            _charityCateogory.GetCategoryInfo(id);
            return View("EditCategory", _charityCateogory);
        }

        [HttpPost]
        public ActionResult EditCategoryInfo(DataAccess model)
        {
            model.EditCategory(model);
            return RedirectToAction("ManagerCategory", model);
        }
		
		public ActionResult AddNewExam(ManageExamModel exam)
        {
            if (ModelState.IsValid)
            {
                var examModel = new ManageExamModel();
                examModel.AddExamination(exam.Examination);
                return RedirectToAction("ManagerExam");
            }

            return PartialView("ManageExamModel", exam);
        }
        public ActionResult DeleteExamination(int id)
        {
            var examModel = new ManageExamModel();
            examModel.DeleteExam(id);
            return RedirectToAction("ManagerExam");
        }
        public ActionResult EditExamination(int examId)
        {
            var examModel = new ManageExamModel();
            examModel.GetExam(examId);
            return View("EditExam", examModel);
        }

        public ActionResult EditExamInfo(ManageExamModel model, int examId)
        {
            model.UpdateExam(model.Examination, model.ExamId);
            return RedirectToAction("ManagerExam");
        }

        public ActionResult AddNewUni(ManageUniersityModel uni)
        {
            if (ModelState.IsValid)
            {
                var uniModel = new ManageUniersityModel();
                uniModel.AddUnversity(uni.University);
                return RedirectToAction("ManageUniversity");
            }

            return PartialView("ManageUniersityModel", uni);
        }

        public ActionResult EditUni(int uniId)
        {
            var uniModel = new ManageUniersityModel();
            uniModel.GetUni(uniId);
            return View("EditUniversity", uniModel);
        }

        public ActionResult EditUniInfo(ManageUniersityModel model, int uniId)
        {
            model.UpdateUni(model.University, model.UniId);
            return RedirectToAction("ManageUniversity");
        }

        public ActionResult DeleteUni(int uniId)
        {
            var uniModel = new ManageUniersityModel();
            uniModel.DeleteUni(uniId);
            return RedirectToAction("ManageUniversity");
        }

        public ActionResult AddNewVenue(ManageVenueModel ven)
        {
            if (ModelState.IsValid)
            {
                var venueModel = new ManageVenueModel();
                venueModel.AddVenue(ven.Venue);
                return RedirectToAction("ManageVenue");
            }

            return PartialView("ManageVenueModel", ven);
        }

        public ActionResult EditVenue(int venueId)
        {
            var uniModel = new ManageVenueModel();
            uniModel.GetVenue(venueId);
            return View("EditVenue", uniModel);
        }

        public ActionResult EditVenueInfo(ManageVenueModel model, int venueId)
        {
            model.UpdateVenue(model.Venue, model.VenueId);
            return RedirectToAction("ManageVenue");
        }

        public ActionResult DeleteVenue(int venueId)
        {
            var uniModel = new ManageVenueModel();
            uniModel.DeleteVenue(venueId);
            return RedirectToAction("ManageVenue");
        }

        
		
    }
}
