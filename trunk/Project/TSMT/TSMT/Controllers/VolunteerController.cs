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
