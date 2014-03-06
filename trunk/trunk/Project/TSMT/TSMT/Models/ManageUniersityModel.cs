using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data;

namespace TSMT.Models
{
    public class ManageUniersityModel
    {
        readonly TSMTEntities db = new TSMTEntities();
        public University University { get; set; }
        public List<University> ListUniversities{ get; set; }
        public int UniId { get; set; }
        public String Name { get; set; }
        public String UniversityCode { get; set; }
        public String Address { get; set; }
        public String Website { get; set; }
        public String Phone { get; set; }

        public List<University> SelectUniversities()
        {
            var list = from c in db.Universities select c;
            return list.ToList();
        }

        public int DeleteUni(int id)
        {
            var ex = db.Universities.FirstOrDefault(c => c.UniversityID == id);
            db.Universities.Remove(ex);
            int r = db.SaveChanges();
            return r;
        }
        public bool AddUnversity(University uni)
        {
            try
            {
                using (var context = new TSMTEntities())
                {
                    context.Universities.Add(uni);
                    context.SaveChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public void GetUni(int uniId)
        {
            University = new University();
            University = db.Universities.Find(uniId);
        }

        public void UpdateUni(University uni, int uniId)
        {
            var oldUni = db.Universities.Find(uniId);
            oldUni.Name = uni.Name;
            oldUni.UnversityCode = uni.UnversityCode;
            oldUni.Address = uni.Address;
            oldUni.Website = uni.Website;
            oldUni.Phone = uni.Phone;
            
            db.SaveChanges();

        }
    }
    
}