using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Validation;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSMT.Models;

namespace TSMT.Controllers
{
    [CheckAuth(5)]
    public class AdminController : Controller
    {
        private readonly TSMTEntities db = new TSMTEntities();

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Index()
        {
            return View();
        }
        #region Import data from excel
        public ActionResult ImportData()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Importexcel(HttpPostedFileBase file)
        {
            if (Request.Files["FileUpload"].ContentLength > 0)
            {
                string fileExtension = Path.GetExtension(Request.Files["FileUpload"].FileName);

                if (fileExtension == ".xls" || fileExtension == ".xlsx")
                {

                    // Create a folder in App_Data named ExcelFiles because you need to save the file temporarily location and getting data from there. 
                    string fileLocation = string.Format("{0}/{1}", Server.MapPath("~/Content/UploadedFolder"), Request.Files["FileUpload"].FileName);

                    if (System.IO.File.Exists(fileLocation))
                        System.IO.File.Delete(fileLocation);

                    Request.Files["FileUpload"].SaveAs(fileLocation);
                    string excelConnectionString = string.Empty;

                    excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileLocation + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
                    //connection String for xls file format.
                    if (fileExtension == ".xls")
                    {
                        excelConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileLocation + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
                    }
                    //connection String for xlsx file format.
                    else if (fileExtension == ".xlsx")
                    {

                        excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileLocation + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
                    }



                    //Create Connection to Excel work book and add oledb namespace
                    OleDbConnection excelConnection = new OleDbConnection(excelConnectionString);
                    excelConnection.Open();
                    DataTable dt = new DataTable();

                    dt = excelConnection.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                    if (dt == null)
                    {
                        return null;
                    }

                    String[] excelSheets = new String[dt.Rows.Count];
                    int t = 0;
                    //excel data saves in temp file here.
                    foreach (DataRow row in dt.Rows)
                    {
                        excelSheets[t] = row["TABLE_NAME"].ToString();
                        t++;
                    }
                    OleDbConnection excelConnection1 = new OleDbConnection(excelConnectionString);
                    DataSet ds = new DataSet();

                    string query = string.Format("Select * from [{0}]", excelSheets[0]);
                    using (OleDbDataAdapter dataAdapter = new OleDbDataAdapter(query, excelConnection1))
                    {
                        dataAdapter.Fill(ds);
                    }
                    List<ImportErrors> listErrors = new List<ImportErrors>();
                    ImportErrors imEror = new ImportErrors();
                    var listUni = db.Universities.ToList();
                    int tmp = db.Universities.Count();
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        University uni = new University();
                        imEror = new ImportErrors();
                        if (ds.Tables[0].Rows[i]["Name"].ToString() != "")
                        {
                            uni.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                        }
                        else
                        {
                            imEror.Name = null;
                            imEror.Address = ds.Tables[0].Rows[i]["Address"].ToString();
                            imEror.Code = ds.Tables[0].Rows[i]["UniversityCode"].ToString();
                        }
                        if (ds.Tables[0].Rows[i]["UniversityCode"].ToString() != "")
                        {
                            uni.UniversityCode = ds.Tables[0].Rows[i]["UniversityCode"].ToString();
                        }
                        else
                        {
                            imEror.Code = null;
                            imEror.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                            imEror.Address = ds.Tables[0].Rows[i]["Address"].ToString();
                        }
                        if (ds.Tables[0].Rows[i]["Address"].ToString() != "")
                        {
                            uni.Address = ds.Tables[0].Rows[i]["Address"].ToString();
                        }
                        else
                        {
                            imEror.Address = null;
                            imEror.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                            imEror.Code = ds.Tables[0].Rows[i]["UniversityCode"].ToString();
                        }

                        uni.Website = ds.Tables[0].Rows[i]["Website"].ToString() != "" ? ds.Tables[0].Rows[i]["Website"].ToString() : null;
                        uni.Phone = ds.Tables[0].Rows[i]["Phone"].ToString() != "" ? ds.Tables[0].Rows[i]["Phone"].ToString() : null;
                        bool flag = true;
                        if (uni.Name != null && uni.Address != null && uni.UniversityCode != null)
                        {
                            for (int j = 0; j < tmp; j++)
                            {
                                imEror = new ImportErrors();
                                if (ds.Tables[0].Rows[i]["Name"].ToString() == listUni[j].Name)
                                {
                                    imEror.SameName = uni.Name;
                                    imEror.Name = uni.Name;
                                    imEror.Code = uni.UniversityCode;
                                    imEror.Address = uni.Address;
                                    flag = false;
                                }
                                if (ds.Tables[0].Rows[i]["UniversityCode"].ToString() == listUni[j].UniversityCode)
                                {
                                    imEror.SameCode = uni.UniversityCode;
                                    imEror.Code = uni.UniversityCode;
                                    imEror.Name = uni.Name;
                                    imEror.Address = uni.Address;
                                    flag = false;
                                }
                                if (imEror.SameCode != null || imEror.SameName != null)
                                {
                                    imEror.Row = i + 2;
                                    listErrors.Add(imEror);
                                    break;
                                }
                            }
                            if (flag)
                            {
                                db.Universities.Add(uni);
                                db.SaveChanges();
                            }
                        }
                        else
                        {
                            imEror.Row = i + 2;
                            listErrors.Add(imEror);
                        }
                    }
                    if (listErrors.Count > 0)
                    {
                        TempData["listerror"] = listErrors;
                        return RedirectToAction("ImportError");
                    }
                    return RedirectToAction("ManageUniversity");
                    //ViewBag.message = "Information saved successfully.";
                }

                ModelState.AddModelError("", "Plese select Excel File.");
            }

            return RedirectToAction("ManageUniversity");
        }
        public ActionResult ImportError()
        {
            ViewData["aaa"] = TempData["listerror"];
            return View();
        }
        public class ImportErrors
        {
            public string Name { get; set; }
            public string Code { get; set; }
            public string Address { get; set; }
            public int Row { get; set; }
            public string SameName { get; set; }
            public string SameCode { get; set; }
            public string SameAddress { get; set; }
        }
        #endregion
        #region ACCOUNTS
        public ActionResult ManageAccount()
        {
            var list = db.Profiles.ToList();
            return View(list);
        }
        public ActionResult ViewDetailAccount()
        {
            return View();
        }
        public ActionResult EditAccount()
        {
            return View();
        }

        #endregion
        #region CATEGORIES
        public ActionResult AddNewCategory()
        {
            return View();
        }
        public ActionResult ManageCategory()
        {
            return View(db.Categories.ToList());
        }
        [HttpPost]
        public ActionResult AddCategory(FormCollection f)
        {
            Category cate = new Category();
            cate.CategoryName = f["cateName"];
            db.Categories.Add(cate);
            db.SaveChanges();

            return RedirectToAction("ManageCategory");
        }
        #endregion
        #region POSTS
        public ActionResult ManagePost()
        {
            //return View();
            return RedirectToAction("ManagePost", "Post");
        }
        #endregion
        #region UNIVERSITIES
        public ActionResult ManageUniversity()
        {
            return View();
        }
        [HttpPost]
        public JsonResult GetDataManageUniversity()
        {
            DataManageUniversity record = new DataManageUniversity();
            List<DataManageUniversity> results = new List<DataManageUniversity>();
            foreach (University u in db.Universities)
            {
                record = new DataManageUniversity();
                record.name = u.Name;
                record.code = u.UniversityCode;
                record.address = u.Address;
                record.actions = "<a href='/Admin/EditUniversity/" + u.UniversityID + "'";
                record.actions += " class='btn-u btn-u-blue' title='Thay đổi thông tin trường ĐHCĐ'><i class='icon-edit'></i></a>";
                record.actions = "<a href='/Admin/EditUniversity/" + u.UniversityID + "'";
                record.actions += " class='btn-u btn-u-blue' title='Thay đổi thông tin trường ĐHCĐ'><i class='icon-edit'></i></a>";
                record.actions += "<a href='/Admin/DeleteUniversity/" + u.UniversityID + "'";
                if (u.UniversitiesExaminations.Count == 0) record.actions += " class='btn-u btn-u-red' title='Xoá thông tin trường ĐHCĐ'><i class='icon-remove'></i></a>";
                results.Add(record);
            }
            return Json(new { success = true, data = results });
        }
        public ActionResult AddUniversity()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddUniversity(FormCollection f)
        {
            University uni = new University();
            uni.Name = f["Name"];
            uni.Address = f["Address"];
            uni.UniversityCode = f["UniversityCode"];
            uni.Website = f["Website"];
            uni.Phone = f["Phone"];

            db.Universities.Add(uni);
            db.SaveChanges();

            return RedirectToAction("ManageUniversity");
        }
        public ActionResult EditUniversity(int id)
        {
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == id);
            return View(uni);
        }
        [HttpPost]
        public ActionResult EditUniversity(FormCollection f)
        {
            int uniId = int.Parse(f["uniId"]);
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == uniId);
            uni.Name = f["Name"];
            uni.Address = f["Address"];
            uni.UniversityCode = f["UniversityCode"];
            uni.Website = f["Website"];
            uni.Phone = (f["Phone"]);
            db.SaveChanges();
            return RedirectToAction("ManageUniversity");
        }
        public ActionResult DeleteUniversity(int id)
        {
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == id);

            db.Universities.Remove(uni);
            db.SaveChanges();
            return RedirectToAction("ManageUniversity");
        }
        #endregion
        #region EXAMINATIONS
        public ActionResult ManageExam()
        {
            var exams = db.Examinations.Where(r => r.BeginDate.Year == DateTime.Now.Year);
            return View(exams);
        }
        public ActionResult AddExam()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddExam(FormCollection f)
        {
            Examination exam = new Examination();
            exam.Name = f["Name"] + " (" + DateTime.Now.Year + ")";
            exam.EndDate = DateTime.Parse(f["EndDay"]);
            exam.BeginDate = exam.EndDate.AddDays(-2);
            db.Examinations.Add(exam);

            for (DateTime date = exam.BeginDate; date <= exam.EndDate; date = date.AddDays(1))
            {
                ScheduleExam scheduleExam = new ScheduleExam();
                scheduleExam.Day = date;
                scheduleExam.BeginTime = new DateTime(date.Year, date.Month, date.Day, 7, 0, 0);
                scheduleExam.EndTime = new DateTime(date.Year, date.Month, date.Day, 17, 0, 0);
                db.ScheduleExams.Add(scheduleExam);
            }

            db.SaveChanges();

            return RedirectToAction("ManageScheduleExam", new { id = exam.ExaminationID });
        }
        public ActionResult DeleteExam(int id)
        {
            Examination exam = db.Examinations.SingleOrDefault(r => r.ExaminationID == id);

            if (exam.ChairitiesExams.Count == 0 && exam.UniversitiesExaminations.Count == 0)
            {
                var scheduleExams = db.ScheduleExams.Where(r => r.ExamID == id);
                foreach (var scheduleExam in scheduleExams) db.ScheduleExams.Remove(scheduleExam);

                db.Examinations.Remove(exam);
                db.SaveChanges();
            }

            return RedirectToAction("ManageExam");
        }
        #endregion
        #region SCHEDULE-EXAMS
        public ActionResult ManageScheduleExam(int id)
        {
            var exam = db.Examinations.SingleOrDefault(r => r.ExaminationID == id);
            return View(exam);
        }
        public ActionResult EditScheduleExam(int id)
        {
            ScheduleExam scheduleExam = db.ScheduleExams.SingleOrDefault(r => r.ScheduleExamID == id);
            return View(scheduleExam);
        }
        [HttpPost]
        public ActionResult EditScheduleExam(FormCollection f)
        {
            int scheduleExamId = int.Parse(f["id"]);
            ScheduleExam scheduleExam = db.ScheduleExams.SingleOrDefault(r => r.ScheduleExamID == scheduleExamId);
            scheduleExam.BeginTime = DateTime.Parse(f["BeginHour"]);
            scheduleExam.EndTime = DateTime.Parse(f["EndHour"]);
            db.SaveChanges();
            return RedirectToAction("ManageScheduleExam", new { examId = scheduleExam.ExamID });
        }
        #endregion
        #region UNI-EXAMS
        public ActionResult ManageUniversityExam()
        {
            var uniExams = db.UniversitiesExaminations.ToList();
            return View(uniExams);
        }

        public ActionResult AddUniversityExam()
        {
            ViewData["exams"] = db.Examinations.ToList();
            ViewData["unis"] = db.Universities.ToList();
            return View();
        }

        [HttpPost]
        public JsonResult LoadExam(int id)
        {
            var ex = db.Examinations.ToList();
            var exams = db.UniversitiesExaminations.ToList();
            foreach (UniversitiesExamination e in exams)
            {
                if (e.UniversityID == id)
                {
                    var exam = db.Examinations.SingleOrDefault(r => r.ExaminationID == e.ExaminationID);
                    ex.Remove(exam);
                }
            }
            var exs = from r in ex
                      select new
                      {
                          value = r.ExaminationID,
                          name = r.Name
                      };
            return Json(exs);
        }
        [HttpPost]
        public ActionResult AddNewUniversityExam(FormCollection f)
        {
            UniversitiesExamination ue = new UniversitiesExamination();
            ue.UniversityID = int.Parse(f["UniversityID"]);
            ue.ExaminationID = int.Parse(f["ExaminationID"]);
            db.UniversitiesExaminations.Add(ue);
            db.SaveChanges();
            return RedirectToAction("ManageUniversityExam");
        }

        public ActionResult DeleteUniversityExam(int id)
        {
            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == id);


            var ves = db.Venues.Where(r => r.UniExamID == id);
            foreach (Venue ve in ves)
            {
                db.Venues.Remove(ve);
            }
            db.UniversitiesExaminations.Remove(ue);
            db.SaveChanges();
            return RedirectToAction("ManageUniversityExam");
        }
        #endregion
        #region VENUES
        public ActionResult ManageVenue(int id) // ueId
        {
            var ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == id);
            return View(ue);
        }
        public ActionResult ViewVenue(int id) // ueId
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            return View(ve);
        }
        public ActionResult AddVenue(int id)
        {
            ViewData["ueId"] = id;
            return View();
        }
        [HttpPost]
        public ActionResult AddVenue(FormCollection f)
        {
            Venue ve = new Venue();
            ve.UniExamID = int.Parse(f["ueId"]);
            ve.Longitude = f["Longitude"];
            ve.Latitude = f["Latitude"];
            ve.Address = f["Address"];
            db.Venues.Add(ve);

            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == ve.UniExamID);

            db.SaveChanges();

            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }

        public ActionResult EditVenue(int id)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            return View(ve);
        }
        [HttpPost]
        public ActionResult EditVenue(FormCollection f)
        {
            int veId = int.Parse(f["veId"]);
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == veId);
            ve.Longitude = f["Longitude"];
            ve.Latitude = f["Latitude"];
            ve.Address = f["Address"];
            db.SaveChanges();

            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }

        public ActionResult DeleteVenue(int id)
        {
            Venue ve = db.Venues.SingleOrDefault(r => r.VenueID == id);
            int ueId = ve.UniExamID;
            db.Venues.Remove(ve);
            db.SaveChanges();
            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }
        #endregion
        #region Statistics
        public ActionResult Statistics()
        {
            return View();
        }


        #endregion
        #region AJAX
        [HttpPost]
        public JsonResult CheckUniversityCode(string code)
        {
            bool isNotExisted = db.Universities.Count(r => r.UniversityCode == code) == 0;
            return Json(new { success = true, isNotExisted = isNotExisted });
        }
        #endregion
    }
}