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
        public ActionResult Index()
        {
            var ar = db.Articles.ToList();
            return View(ar);
        }
        public ActionResult DisplayNews()
        {
            var ar = db.Articles.Where(r=> r.IsAprroved.Equals(true)).ToList();
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

        public ActionResult AddNewPost()
        {
            ViewData["category"] = db.Categories.ToList();
            return View();
        }

        public ActionResult DetailPost(int arId)
        {
            Article car = db.Articles.SingleOrDefault(r => r.ArticleID == arId);
            ViewData["category"] = db.Categories.ToList();
            return View(car);
        }

        [HttpPost, ValidateInput(false)]
        public ActionResult AddNewPost(FormCollection f)
        {
            var acc = (Account)Session["acc"];
            var ac = new Article();
            ac.CategoryID = int.Parse(f["CateId"]);
            ac.Content = f["editor1"];
            ac.Title = f["Title"];
            ac.CreatedBy = 16;
            ac.CreatedOn = System.DateTime.UtcNow;
            ac.IsAprroved = false;
            db.Articles.Add(ac);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult EditPost(FormCollection f)
        {
            var acc = (Account)Session["acc"];
            int arId = int.Parse(f["articleId"]);
            var ar = db.Articles.SingleOrDefault(r => r.ArticleID == arId);
            if (ar != null)
            {
                ar.CategoryID = int.Parse(f["CateId"]);
                ar.Content = f["[Content]"];
                ar.Title = f["Title"];
                ar.LastModifiedOn = System.DateTime.UtcNow;
                if (f["approve"] == "Accept")
                {
                    ar.IsAprroved = true;
                }
                else
                {
                    ar.IsAprroved = false;
                }
            }
            else
            {
                return RedirectToAction("AddNewPost");
            }
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult DeletePost(FormCollection f)
        {
            return RedirectToAction("Index");
        }
    }
}
