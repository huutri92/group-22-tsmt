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

    }
}
