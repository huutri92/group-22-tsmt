using System;
using System.Collections.Generic;
using System.Data;
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
        public ActionResult ImportData()
        {
            return View();
        }

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
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        University uni = new University();
                        if (ds.Tables[0].Rows[i]["Name"].ToString() != "")
                        {
                            uni.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                        }
                        else
                        {
                            break;
                        }
                        if (ds.Tables[0].Rows[i]["Address"].ToString() != "")
                        {
                            uni.Address = ds.Tables[0].Rows[i]["Address"].ToString();
                        }
                        else
                        {
                            break;
                        }
                        uni.UniversityCode = ds.Tables[0].Rows[i]["UniversityCode"].ToString() != "" ? ds.Tables[0].Rows[i]["UniversityCode"].ToString() : null;
                        uni.Website = ds.Tables[0].Rows[i]["Website"].ToString() != "" ? ds.Tables[0].Rows[i]["Website"].ToString() : null;
                        uni.Phone = int.Parse(ds.Tables[0].Rows[i]["Phone"].ToString());
                        uni.IsRemovable = false;
                        db.Universities.Add(uni);
                        db.SaveChanges();
                    }
                    //ViewBag.message = "Information saved successfully.";
                }

                else
                {
                    ModelState.AddModelError("", "Plese select Excel File.");
                }
            }

            return RedirectToAction("ManageUniversity");
        }
        [HttpPost]
        public JsonResult ReviewDataImported(HttpPostedFileBase file)
        {
            ImportFromExcel model = new ImportFromExcel();
            if (Request.Files["FileUpload"].ContentLength > 0)
            {
                string fileExtension = Path.GetExtension(Request.Files["FileUpload"].FileName);

                if (fileExtension == ".xls" || fileExtension == ".xlsx")
                {

                    // Create a folder in App_Data named ExcelFiles because you need to save the file temporarily location and getting data from there. 
                    string fileLocation = string.Format("{0}/{1}", Server.MapPath("~/Content/UploadedFolder"),
                        Request.Files["FileUpload"].FileName);

                    if (System.IO.File.Exists(fileLocation))
                        System.IO.File.Delete(fileLocation);

                    Request.Files["FileUpload"].SaveAs(fileLocation);
                    string excelConnectionString = string.Empty;

                    excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileLocation +
                                            ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
                    //connection String for xls file format.
                    if (fileExtension == ".xls")
                    {
                        excelConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileLocation +
                                                ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
                    }
                    //connection String for xlsx file format.
                    else if (fileExtension == ".xlsx")
                    {

                        excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileLocation +
                                                ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
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

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        model.Name = ds.Tables[0].Rows[i]["Name"].ToString();
                        model.Address = ds.Tables[0].Rows[i]["Address"].ToString();
                        model.UniversityCode = ds.Tables[0].Rows[i]["UniversityCode"].ToString();
                        model.Website = ds.Tables[0].Rows[i]["Website"].ToString();
                        model.Phone = int.Parse(ds.Tables[0].Rows[i]["Phone"].ToString());
                        model.IsRemovable = false;
                    }
                }

            }
            return Json(model, JsonRequestBehavior.AllowGet);
        }

        #region Manual-Assign
        public ActionResult ModelManualAssignToRoom()
        {
            ViewData["listRoom"] = db.Rooms.ToList();
            ViewData["listCandidate"] = db.ExaminationsPapers.Where(r => r.RoomID == null).ToList();
            return View();
        }
        public ActionResult ManualAssignToRoom()
        {
            //ViewData["listRoom"] = db.Rooms.Where(r=>r.LodgeID == lodgeId).ToList();
            //ViewData["listCandidate"] = db.ExaminationsPapers.Where(r => r.RoomID == null).ToList();
            ViewData["listLodges"] = db.Lodges.ToList();
            return View();
        }



        public ActionResult ManualAssignToCar()
        {
            ViewData["listCar"] = db.Cars.ToList();
            ViewData["listVolunteer"] = db.Volunteers.ToList();
            ViewData["listCandidate"] = db.ExaminationsPapers.Where(r => r.CarID == null && r.VolunteerID == null).ToList();
            return View();
        }

        public JsonResult ResultAjaxLodgeRoom(int id)
        {
            var exPaper = from r in db.Rooms
                          where r.LodgeID == id
                          select new
                          {
                              value = r.RoomID,
                              name = r.RoomName,
                              capacity = r.AvailableSlots
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ResultAjaxLodgeCandidate(int id)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.LodgeRegisteredID == id && r.RoomID == null
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ResultAjaxRoom(int id, int lodgeId)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.RoomID == id && r.LodgeRegisteredID == lodgeId
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }
        public JsonResult ResultAjaxCar(int id)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.CarID == id
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }
        public JsonResult ResultAjaxVolunteer(int id)
        {
            var exPaper = from r in db.ExaminationsPapers
                          where r.VolunteerID == id
                          select new
                          {
                              value = r.CandidateID,
                              name = r.Candidate.Account.Profile.Lastname
                          };
            return Json(exPaper, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult EditAssignRoom(int caId, int roomId)
        {
            var expp = db.ExaminationsPapers.SingleOrDefault(r => r.CandidateID == caId);
            if (roomId == 0)
            {
                expp.RoomID = null;
            }
            else
            {
                expp.RoomID = roomId;
            }
            db.SaveChanges();
            return Json("");
        }
        public JsonResult EditAssignCar(int caId, int carId, int voId)
        {
            var expp = db.ExaminationsPapers.SingleOrDefault(r => r.CandidateID == caId);
            if (carId == 0 && voId == 0)
            {
                expp.CarID = null;
                expp.VolunteerID = null;
            }
            else if (carId != 0 && voId == 0)
            {
                expp.CarID = carId;
                expp.VolunteerID = null;
            }
            else
            {
                expp.CarID = null;
                expp.VolunteerID = voId;
            }
            db.SaveChanges();
            return Json("");
        }
        #endregion

        #region ACCOUNTS
        public ActionResult ManageAccount()
        {
            return View(db.Profiles.ToList());
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
        public ActionResult ManageCategory()
        {
            return View(db.Categories.ToList());
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
            var unis = db.Universities.ToList();
            return View(unis);
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
            uni.Phone = int.Parse(f["Phone"]);
            uni.IsRemovable = true;

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
            uni.Phone = int.Parse(f["Phone"]);
            db.SaveChanges();
            return RedirectToAction("ManageUniversity");
        }
        
        public ActionResult DeleteUniversity(int id)
        {
            University uni = db.Universities.SingleOrDefault(r => r.UniversityID == id);
            if (!uni.IsRemovable)
            {
                // redirect toi trang bao loi ko cho delete!
                return RedirectToAction("ManageUniversity");
            }
            db.Universities.Remove(uni);
            db.SaveChanges();
            return RedirectToAction("ManageUniversity");
        }
        #endregion
        #region EXAMINATIONS
        
        public ActionResult ManageExam()
        {
            var exams = db.Examinations.ToList();
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
            exam.Name = f["Name"];
            exam.BeginDate = DateTime.Parse(f["BeginDate"]);
            exam.EndDate = DateTime.Parse(f["EndDate"]);
            exam.IsRemovable = true;
            db.Examinations.Add(exam);

            for (DateTime date = exam.BeginDate; date <= exam.EndDate; date = date.AddDays(1))
            {
                ScheduleExam scheduleExam = new ScheduleExam();
                scheduleExam.Day = date;
                scheduleExam.BeginHour = new DateTime(date.Year, date.Month, date.Day, 7, 0, 0);
                scheduleExam.EndHour = new DateTime(date.Year, date.Month, date.Day, 16, 0, 0);
                db.ScheduleExams.Add(scheduleExam);
            }

            db.SaveChanges();

            return RedirectToAction("ManageExam");
        }
        
        public ActionResult DeleteExam(int id)
        {
            Examination exam = db.Examinations.SingleOrDefault(r => r.ExaminationID == id);

            if (!exam.IsRemovable)
            {
                // redirect toi trang bao loi ko cho delete!
                return RedirectToAction("ManageExam");
            }

            var scheduleExams = db.ScheduleExams.Where(r => r.ExamID == id);
            foreach (var scheduleExam in scheduleExams)
            {
                db.ScheduleExams.Remove(scheduleExam);
            }

            db.Examinations.Remove(exam);
            db.SaveChanges();
            return RedirectToAction("ManageExam");
        }
        #endregion
        #region SCHEDULE-EXAMS
        
        public ActionResult ManageScheduleExam(int id)
        {
            var scheduleExams = db.ScheduleExams.Where(r => r.ExamID == id);
            return View(scheduleExams);
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
            scheduleExam.BeginHour = DateTime.Parse(f["BeginHour"]);
            scheduleExam.EndHour = DateTime.Parse(f["EndHour"]);
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
        
        public ActionResult AddUniversityExam(FormCollection f)
        {
            UniversitiesExamination ue = new UniversitiesExamination();
            ue.UniversityID = int.Parse(f["UniversityID"]);
            ue.ExaminationID = int.Parse(f["ExaminationID"]);
            ue.IsRemovable = true;
            db.UniversitiesExaminations.Add(ue);
            db.SaveChanges();

            return RedirectToAction("ManageUniversityExam");
        }
        
        public ActionResult DeleteUniversityExam(int id)
        {
            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == id);

            if (!ue.IsRemovable)
            {
                //redirect toi trang bao loi ko cho delete!
                db.UniversitiesExaminations.Remove(ue);
                return RedirectToAction("ManageUniversityExam");
            }

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
            var ves = db.Venues.Where(r => r.UniExamID == id);
            ViewData["ueId"] = id;
            return View(ves);
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
            ve.IsRemovable = true;
            db.Venues.Add(ve);

            UniversitiesExamination ue = db.UniversitiesExaminations.SingleOrDefault(r => r.UniExamID == ve.UniExamID);
            ue.IsRemovable = false;

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
            //int ueId = ve.UniExamID;

            //if (!ve.IsRemovable)
            //{
            //    //redirect toi trang bao loi ko cho delete!
            //    return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
            //}

            //if (db.Venues.Count(r => r.UniExamID == ueId) < 2) { ve.UniversitiesExamination.IsRemovable = true; }
            //db.Venues.Remove(ve);
            //db.SaveChanges();
            return RedirectToAction("ManageVenue", new { id = ve.UniExamID });
        }
        #endregion

        #region Statistics
        public ActionResult Statistics()
        {
            return View();
        }


        #endregion
    }
}