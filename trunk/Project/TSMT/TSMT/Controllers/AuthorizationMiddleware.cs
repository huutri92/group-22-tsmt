using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

public class CheckAuth : ActionFilterAttribute
{
    public int valid_role_id { get; set; } 
    public string invalid_login { get; set; } 
    public string invalid_authorize { get; set; }

    public CheckAuth(int vroleId)
    {
        this.invalid_login = "/Home/Entrance";
        this.valid_role_id = vroleId;
        this.invalid_authorize = "/";
    }

    public CheckAuth(string ilogin, int vroleId, string iauth)
    {
        this.invalid_login = ilogin;
        this.valid_role_id = vroleId;
        this.invalid_authorize = iauth;
    }

    public override void OnActionExecuting(ActionExecutingContext filterContext)
    {
        HttpContext ctx = HttpContext.Current;

        if ((Account)ctx.Session["acc"] == null) 
        {
            ctx.Session["fromUrl"] = ctx.Request.Url.AbsoluteUri;
            ctx.Response.Redirect(invalid_login);
        }
        else if (((Account)ctx.Session["acc"]).RoleID != valid_role_id) 
        { 
            ctx.Response.Redirect(invalid_authorize);
        }

        base.OnActionExecuting(filterContext);
    }
}