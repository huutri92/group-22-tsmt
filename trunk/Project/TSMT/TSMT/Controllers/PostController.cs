using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using System.Xml;
using TSMT.Models;

namespace TSMT.Controllers
{
    public class PostController : Controller
    {
        //
        // GET: /Post/
        private readonly TSMTEntities db = new TSMTEntities();
        public ActionResult ManagePost()
        {
            var ar = db.Articles.ToList();
            return View(ar);
        }
        public ActionResult News()
        {
            var ar = db.Articles.Where(r => r.IsAprroved).ToList();
            ViewData["category"] = db.Categories.ToList();
            return View(ar);
        }
        public ActionResult DisplayNews(int arId)
        {
            var acc = (Account)Session["acc"];
            var ar = db.Articles.Where(r => r.ArticleID == arId).ToList();
            ViewData["category"] = db.Categories.ToList();
            ViewData["comment"] = db.Comments.Where(r=> r.ArticleID==arId).ToList();
            ViewData["user"] = db.Accounts.Where(r => r.AccountID == acc.AccountID).ToList();
            return View(ar);
        }
        public ActionResult CategoryNews(int cateId)
        {
            var ar = db.Articles.Where(r => r.CategoryID == cateId).ToList();
            ViewData["category"] = db.Categories.ToList();
            return View(ar);
        }
        public ActionResult GetNewFeed()
        {
            string url = "http://dantri.com.vn/tuyen-sinh.rss";
            XmlTextReader reader = new XmlTextReader(url);

            DataSet ds = new DataSet();
            ds.ReadXml(reader);

            DataRowCollection list = ds.Tables["item"].Rows;
            return View(list);
        }
       //[CheckAuth("~/Home/Entrance/", , "/")]
        public ActionResult AddNewPost()
        {
            ViewData["category"] = db.Categories.ToList();
            return View();
        }

        public ActionResult EditPost(int arId)
        {
            Article ar = db.Articles.SingleOrDefault(r => r.ArticleID == arId);
            ViewData["category"] = db.Categories.ToList();
            return View(ar);
        }

        [HttpPost, ValidateInput(false)]
        public ActionResult AddNewPost(FormCollection f)
        {
            var acc = (Account)Session["acc"];
            var ar = new Article();
            ar.CategoryID = int.Parse(f["CateId"]);
            ar.AvatarImage = f["avatarImg"];
            ar.Content = f["editor1"];
            ar.Title = f["Title"];
            if (f["summary"].Equals(""))
            {
                var su = f["editor1"].Substring(100);
                ar.Summary = su;
            }
            else
            {
                ar.Summary = f["summary"];
            }
            ar.CreatedBy = acc.AccountID;
            ar.CreatedOn = DateTime.Now;
            ar.IsAprroved = false;
            db.Articles.Add(ar);
            db.SaveChanges();
            return RedirectToAction("ManagePost", "Post");
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult EditPost(FormCollection f)
        {
            var acc = (Account)Session["acc"];
            int arId = int.Parse(f["articleId"]);
            var ar = db.Articles.SingleOrDefault(r => r.ArticleID == arId);
            if (ar != null)
            ar.CategoryID = int.Parse(f["CateId"]);
            ar.Content = f["[Content]"];
            ar.Title = f["Title"];
            ar.LastModifiedOn = System.DateTime.UtcNow;
            if (f["approve"].Equals("Reject"))
            {
                ar.IsAprroved = false;
            }
            else
            {
                ar.IsAprroved = true;
            }
            db.SaveChanges();
            return RedirectToAction("ManagePost");
        }
        [HttpPost]
        public JsonResult AddComment(int arId, string comment)
        {
            var acc = (Account)Session["acc"];
            var cmt = new Comment();
            cmt.ArticleID = arId;
            cmt.AccountID = acc.AccountID;
            cmt.Content = comment;
            cmt.CreatedOn = DateTime.Now;
            db.Comments.Add(cmt);
            db.SaveChanges();
            return Json("");
        }

        public JsonResult DeletePost(int id)
        {
            Article ar = db.Articles.SingleOrDefault(r => r.ArticleID == id);
            db.Articles.Remove(ar);
            db.SaveChanges();
            return Json("",JsonRequestBehavior.AllowGet);
        }
    }
}
