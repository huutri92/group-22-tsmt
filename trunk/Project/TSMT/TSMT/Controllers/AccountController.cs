using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Text;
using System.Drawing.Text;
using System.Net.Mail;
using TSMT.Models;

namespace TSMT.Controllers
{
    public class AccountController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();
        # region User
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection f)
        {
            string email = f["Email"];
            string password = f["Password"];
            Account acc = db.Accounts.FirstOrDefault(r => r.Email == email && r.Password == password);
            if (acc == null) return RedirectToAction("Login");

            if (acc.IsActive == false) return RedirectToAction("VerifyAccount", "Account");
            else
            {
                Session["acc"] = acc;
                if (Session["fromUrl"] == null)
                {
                    int roleID = acc.RoleID;
                    switch (roleID)
                    {
                        case 1:
                            return RedirectToAction("Index", "Candidate");
                        case 2:
                            return RedirectToAction("Index", "Charity");
                        case 4:
                            return RedirectToAction("Index", "Volunteer");
                        case 3:
                            return RedirectToAction("Index", "Sponsor");
                        case 5:
                            return RedirectToAction("Index", "Admin");
                    }
                }
                else return Redirect(Session["fromUrl"].ToString());
            }

            return Redirect("/");
        }


        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home", new { area = "" });
        }

        public ActionResult Register()
        {
            ViewData["provinces"] = db.Provinces.ToList();
            ViewData["districts"] = db.Districts.ToList();
            ViewData["roles"] = db.Roles.ToList();
            return View();
        }

        [HttpPost]
        public ActionResult Register(FormCollection f)
        {
            string icap = f["inputCaptcha"];
            if (icap == "")
            {
                Account acc = new Account();
                acc.Email = f["email"];
                acc.Password = f["password"];
                acc.RoleID = int.Parse(f["role"]);

                Profile pro = new Profile();
                pro.Firstname = f["firstname"];
                pro.Lastname = f["lastname"];

                pro.Gender = bool.Parse(f["gender"]);
                pro.DateOfBirth = DateTime.Parse(f["dateOfBirth"]);
                pro.PhoneNumber = f["phoneNumber"];
                pro.Address = f["address"];
                pro.DistrictID = int.Parse(f["district"]);

                TempData["acc"] = acc;
                TempData["pro"] = pro;
                TempData["emptyCaptcha"] = "Captcha rỗng";

                return RedirectToAction("Register", "Account");
            }
            else if (icap != "")
            {
                if (icap != Session["Captcha"].ToString())
                {
                    TempData["wrongCaptcha"] = "Kết quả sai";
                    return Redirect("Register");
                }
                else if (icap == Session["Captcha"].ToString())
                {
                    Account acc = new Account();
                    acc.Email = f["email"];
                    acc.Password = f["password"];
                    acc.IsActive = false;
                    acc.RoleID = int.Parse(f["role"]);
                    db.Accounts.Add(acc);
                    db.SaveChanges();

                    switch (acc.RoleID)
                    {
                        case 1: Candidate can = new Candidate();
                            can.AccountID = acc.AccountID;
                            can.HighSchoolName = f["highschool"];
                            db.Candidates.Add(can);
                            break;
                        case 2: Charity cha = new Charity();
                            cha.AccountID = acc.AccountID;
                            db.Charities.Add(cha);
                            break;
                        case 3: Sponsor sp = new Sponsor();
                            sp.AccountID = acc.AccountID;
                            db.Sponsors.Add(sp);
                            break;
                        case 4: Volunteer vo = new Volunteer();
                            vo.AccountID = acc.AccountID;
                            //vo.JobName = f["job"];
                            //vo.Description = f["des"];
                            db.Volunteers.Add(vo);
                            break;
                    }
                    db.SaveChanges();

                    Profile pro = new Profile();
                    pro.AccountID = acc.AccountID;
                    pro.Firstname = f["firstname"];
                    pro.Lastname = f["lastname"];
                    pro.Gender = bool.Parse(f["gender"]);
                    pro.DateOfBirth = DateTime.Parse(f["dateOfBirth"]);
                    pro.PhoneNumber = f["phoneNumber"];
                    pro.Address = f["address"];
                    pro.DistrictID = int.Parse(f["district"]);

                    db.Profiles.Add(pro);
                    db.SaveChanges();

                    acc.ProfileID = pro.ProfileID;
                    db.SaveChanges();
                    Session.Clear();

                    //string strRandomCode = RandomCode(6);
                    //string abc = null;
                    //MailMessage loginInfo = new MailMessage();
                    //loginInfo.To.Add(acc.Email);
                    //loginInfo.From = new MailAddress("TSMT<trilnhse60687@fpt.edu.vn>");
                    //loginInfo.Subject = "Confirm Your Registration";
                    //loginInfo.Body = "Hello. Mr/Mrs/Miss <b>" + acc.Profile.Lastname + " " + acc.Profile.Firstname + "</b> Welcome to TSMT. Thanks for your registration! Your confirmation code: <b>" + strRandomCode + "</b><br/><br/>Please click <a href=" + abc + ">here </a>to confirm registration";
                    ////loginInfo.Body = "Tên khách hàng: " + TBten.Text + "<br><br>Nhấp <a href=" + sss + ">vào đây</a> để xác nhận tài khoản   ";
                    //loginInfo.IsBodyHtml = true;
                    //SmtpClient smtp = new SmtpClient();
                    //smtp.Host = "smtp.gmail.com";
                    //smtp.Port = 587;
                    //smtp.EnableSsl = true;
                    //smtp.Credentials = new System.Net.NetworkCredential("trilnhse60687@fpt.edu.vn", "64689205");
                    //smtp.Send(loginInfo);
                }
            }
            return RedirectToAction("Index", "Home");
        }

        public JsonResult getLocationInformation(int id)
        {
            var location = from d in db.Districts
                      where d.ProvinceID == id
                      select new
                      {
                          value = d.DistrictID,
                          name = d.Name
                      };
            return Json(location, JsonRequestBehavior.AllowGet);
        }

        public string RandomCode(int codeCount)
        {
            string allChar = string.Format("0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z").ToUpper();
            string[] allCharArray = allChar.Split(',');
            string randomCode = "";
            int temp = -1;
            Random rand = new Random();
            for (int i = 0; i < codeCount; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(36); if (temp != -1 && temp == t)
                {
                    return RandomCode(codeCount);
                }
                temp = t;
                randomCode += allCharArray[t];
            }
            return randomCode;
        }

        public ActionResult CaptchaImage(string prefix, bool noisy = true)
        {
            var rand = new Random((int)DateTime.Now.Ticks);

            //generate new question
            int a = rand.Next(10, 99);
            int b = rand.Next(0, 9);
            var captcha = string.Format("{0} + {1} = ?", a, b);

            //store answer
            Session["Captcha" + prefix] = a + b;

            //image stream
            FileContentResult img = null;

            using (var mem = new MemoryStream())
            using (var bmp = new Bitmap(130, 30))
            using (var gfx = Graphics.FromImage((Image)bmp))
            {
                gfx.TextRenderingHint = TextRenderingHint.ClearTypeGridFit;
                gfx.SmoothingMode = SmoothingMode.AntiAlias;
                gfx.FillRectangle(Brushes.White, new Rectangle(0, 0, bmp.Width, bmp.Height));

                //add noise
                if (noisy)
                {
                    int i, r, x, y;
                    var pen = new Pen(Color.Yellow);
                    for (i = 1; i < 10; i++)
                    {
                        pen.Color = Color.FromArgb(
                        (rand.Next(0, 255)),
                        (rand.Next(0, 255)),
                        (rand.Next(0, 255)));

                        r = rand.Next(0, (130 / 3));
                        x = rand.Next(0, 130);
                        y = rand.Next(0, 30);

                        gfx.DrawEllipse(pen, x - r, y - r, r, r);
                    }
                }

                //add question
                gfx.DrawString(captcha, new Font("Tahoma", 15), Brushes.Gray, 2, 3);

                //render as Jpeg
                bmp.Save(mem, System.Drawing.Imaging.ImageFormat.Jpeg);
                img = this.File(mem.GetBuffer(), "image/Jpeg");
            }

            return img;
        }

        public ActionResult EditAccount(int id)
        {            
            var account = db.Profiles.FirstOrDefault(a => a.AccountID == id);
            ViewData["provinces"] = db.Provinces.ToList();
            ViewData["districts"] = db.Districts.ToList();
            return View(account);
        }
      
        [HttpPost]
        public ActionResult EditAccount(FormCollection f)
        {
            int accID = int.Parse(f["accID"]);
            Profile pro = db.Profiles.SingleOrDefault(p => p.AccountID == accID);
            pro.Lastname = f["lastname"];
            pro.Firstname = f["firstname"];
            pro.DateOfBirth = DateTime.Parse(f["dateOfBirth"]);
            pro.Gender = bool.Parse(f["gender"]);
            pro.PhoneNumber = f["phonenumber"];
            pro.Address = f["address"];
            pro.DistrictID = int.Parse(f["district"]);

            db.SaveChanges();
            return RedirectToAction("EditAccount", "Account", new {id = accID });
            
        }

        public JsonResult getLocation(int id)
        {
            var loc = from d in db.Districts
                      where d.ProvinceID == id
                      select new
                      {
                          value = d.DistrictID,
                          name = d.Name
                      };
            return Json(loc, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ChangePassword()
        {
            return View();
        }
        public ActionResult ForgotPassword()
        {
            return View();
        }

        public ActionResult VerifyAccount()
        {
            return View();
        }

        [HttpPost]
        public ActionResult VerifyAccount(FormCollection f)
        {
            string email = f["Email"];
            string code = f["Code"];
            Account acc = db.Accounts.FirstOrDefault(r => r.Email == email && r.Code == code);

            acc.IsActive = true;

            db.SaveChanges();

            return RedirectToAction("Login", "Account");
        }

        public bool IsEmailExist()
        {
            return true;
        }

        #endregion



    }
}
