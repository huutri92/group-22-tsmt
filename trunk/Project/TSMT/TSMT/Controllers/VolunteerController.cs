using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{
    public class VolunteerController : Controller
    {
        [CheckAuthorization(invalid_login = "Home/Entrance", valid_role_id = 4, invalid_authorize = "/")]
        public ActionResult Index()
        {
            return View();
        }
	private readonly TSMTEntities db = new TSMTEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult JoinCE()
        {
            Account acc = (Account)Session["acc"];
            var joinCE = db.Volunteers.Where(c => c.AccountID== acc.AccountID).ToList();
            return View(joinCE);
        }
        public ActionResult JoinNewCE()
        {
            var listCE = db.ChairitiesExams.ToList();
            return View(listCE);
        }

        [HttpPost]
        public ActionResult JoinNewCE(FormCollection f)
        {
            Account acc = (Account)Session["acc"];
           Volunteer vt = acc.Volunteers.SingleOrDefault(r => r.AccountID == acc.AccountID);

            Volunteer fund = new Volunteer();
            
            fund.CharityExamID = int.Parse(f["CharityName"]);
            db.SaveChanges();
            return RedirectToAction("ManagerFund");
        }





        public ActionResult EditVolunteer(int id)
        {
            var _JoinNewCE = new VolunteerJoinCEModel();
            _JoinNewCE.GetVolunteerInfo(id);
            return View(_JoinNewCE);
        }

        [HttpPost]
        public ActionResult EditVOlunteer(VolunteerJoinCEModel model)
        {
            model.EditVolunteer(model);
            return RedirectToAction("ManagerCategory", model);
        }
    }
}

public class CheckAuthorization : ActionFilterAttribute
{
    public int valid_role_id { get; set; }
    public string invalid_login { get; set; }
    public string invalid_authorize { get; set; }

    public override void OnActionExecuting(ActionExecutingContext filterContext)
    {
        HttpContext ctx = HttpContext.Current;

        if ((Account)ctx.Session["acc"] == null)
        {
            ctx.Response.Redirect(invalid_login);
        }
        else if (((Account)ctx.Session["acc"]).RoleID != valid_role_id)
        {
            ctx.Response.Redirect(invalid_authorize);
        }

        base.OnActionExecuting(filterContext);
    }
}
