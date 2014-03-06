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
    }
}
