using System;
using System.Collections;
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

    public class CharityExamModel : IEnumerable
    {
        readonly TSMTEntities db = new TSMTEntities();
        public ChairitiesExam ChairitiesExam { get; set; }
        public List<ChairitiesExam> ListChairitiesExams { get; set; }
        public int CharityExamId { get; set; }
        public int ExamId { get; set; }
        public string ExamName { get; set; }
        public int DistrictId { get; set; }
        public int CharityId { get; set; }
        public int TotalSlotsLodges { get; set; }
        public int AvailableSlotsLodges { get; set; }
        public int TotalSlotsVehicles { get; set; }
        public int AvailableSlotsVehicles { get; set; }
        private string _fullName;
        public Examination Examination { get; set; }

        public List<Examination> ListExamination { get; set; }
        public District District { get; set; }
        public List<District> ListDistricts {get; set; } 
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

        public void GetListDistrict()
        {
            ListDistricts = new List<District>();
            ListDistricts = db.Districts.ToList();
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


        public List<ChairitiesExam> SelectChairitiesExams()
        {
            var list = from c in db.ChairitiesExams select c;
            return list.ToList();
        }

        public int DeleteCharityExam(int id)
        {
            var ce = db.ChairitiesExams.Find(id);
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

        public void UpdateCharityExam(ChairitiesExam ceExam, int ceId)
        {
            var oldCe = db.ChairitiesExams.Find(ceId);
            oldCe.ExamID = ceExam.ExamID;
            oldCe.CharityID = ceExam.CharityID;
            oldCe.DistrictID = ceExam.DistrictID;
            oldCe.TotalSlotsLodges = ceExam.TotalSlotsLodges;
            oldCe.AvailableSlotsLodges = ceExam.TotalSlotsLodges;
            oldCe.TotalSlotsVehicles = ceExam.TotalSlotsVehicles;
            oldCe.AvailableSlotsVehicles = ceExam.TotalSlotsVehicles;
            db.SaveChanges();

        }

        public IEnumerator GetEnumerator()
        {
            throw new NotImplementedException();
        }
    }
}