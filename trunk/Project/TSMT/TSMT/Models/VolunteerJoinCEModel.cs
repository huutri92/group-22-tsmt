using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class VolunteerJoinCEModel
    {
        TSMTEntities db = new TSMTEntities();
        public Volunteer Volunteer { get; set; }
        public int VolunteerID { get; set; }
        public int CharityExamID { get; set; }
        public List<Volunteer> ListVolunteer { get; set; }
        public List<Volunteer> SelectVolunteer()
        {
            var list = from c in db.Volunteers select c;
            return list.ToList();
        }
     

        public void GetVolunteerInfo(int volunteerID)
        {
            Volunteer = new Volunteer();
            Volunteer = db.Volunteers.Find(volunteerID);
            VolunteerID = Volunteer.VolunteerID;
            
        }
        public void EditVolunteer(VolunteerJoinCEModel model)
        {

            var oldVolunteer = db.Volunteers.Find(model.VolunteerID);
            oldVolunteer.CharityExamID = model.CharityExamID;

            db.SaveChanges();
        }
    }
}