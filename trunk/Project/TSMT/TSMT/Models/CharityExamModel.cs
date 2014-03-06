using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class NewCharity
    {
        public int CharityId { get; set; }
        public int AccountId { get; set; }
        public string FullName { get; set; }
    }

    public class CharityExamModel
    {
        readonly TSMTEntities db = new TSMTEntities();
        public ChairitiesExam ChairitiesExam { get; set; }
        public List<ChairitiesExam> ListVenuesChairitiesExams { get; set; }
        public int CharityExamId { get; set; }
        public int ExamId { get; set; }
        public int CharityId { get; set; }
        public int TotalSlotsLodges { get; set; }
        public int AvailableSlotsLodges { get; set; }
        public int TotalSlotsVehicles { get; set; }
        public int AvailableSlotsVehicles { get; set; }
        private string _fullName;
        public Examination Examination { get; set; }

        public List<Examination> ListExamination { get; set; }
        public Charity Charity { get; set; }

        public List<NewCharity> ListCharities { get; set; }

        public string FullName
        {
            get { return "Hello"; }
            set { _fullName = value; }
        }

        public void GetListExam()
        {
            ListExamination = new List<Examination>();
            ListExamination = db.Examinations.ToList();
        }

        public void GetListCharity()
        {
            ListCharities = new List<NewCharity>();
            ListCharities = (from c in db.Charities
                            select new NewCharity
                            {
                                CharityId = c.CharityID,
                                AccountId = c.AccountID,
                                FullName = c.Account.Profile.Lastname + " " + c.Account.Profile.Firstname
                            }).ToList<NewCharity>();
        }


        public List<ChairitiesExam> SelectVenuesChairitiesExams()
        {
            var list = from c in db.ChairitiesExams select c;
            return list.ToList();
        }

        public int DeleteCharityExam(int id)
        {
            var ce = db.ChairitiesExams.FirstOrDefault(c => c.CharityExamID == id);
            db.ChairitiesExams.Remove(ce);
            int r = db.SaveChanges();
            return r;
        }
        public bool AddCharityExam(ChairitiesExam ce)
        {
            try
            {
                using (var context = new TSMTEntities())
                {
                    context.ChairitiesExams.Add(ce);
                    context.SaveChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public void GetCharityExam(int ceId)
        {
            ChairitiesExam = new ChairitiesExam();
            ChairitiesExam = db.ChairitiesExams.Find(ceId);
        }

        public void UpdateCharityExam(ChairitiesExam venue, int ceId)
        {
            var oldVenue = db.ChairitiesExams.Find(ceId);
            oldVenue.ExamID = venue.ExamID;
            oldVenue.CharityID = venue.CharityID;
            oldVenue.TotalSlotsLodges = venue.TotalSlotsLodges;
            oldVenue.AvailableSlotsLodges = venue.AvailableSlotsLodges;
            oldVenue.TotalSlotsVehicles = venue.TotalSlotsVehicles;
            oldVenue.AvailableSlotsVehicles = venue.AvailableSlotsVehicles;
            db.SaveChanges();

        }
    }
}