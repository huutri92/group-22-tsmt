using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class CharityVolunteerModel
    {
        private readonly TSMTEntities db = new TSMTEntities();
        public int VolunterId { get; set; }
        public string VolunteerName { get; set; }
        public string Description { get; set; }
        public List<Volunteer> ListVolunteer { get; set; }
        public int VolunteerId { get; set; }
        public Volunteer Volunteer { get; set; }
        //public List<VolunteerInfo> ListVolunteerInfo { get; set; } 

        public void GetListVolunteer(int charityExamId)
        {
            ListVolunteer = new List<Volunteer>();
            //var ListJoin = db.JoinsIns.Where(c => c.CharitiesExaminationsID == charityExamId);
            //foreach (var join in ListJoin)
            //{
            //    var Schedules = db.SchedulesVolunteers.Where(s => s.JoinInID == join.JoinInID);
            //    foreach (var schedule in Schedules)
            //    {
            //        ListVolunteer.Add(schedule.Volunteer);
            //    }
            //}

            //ListVolunteer = ListVolunteer.Distinct().ToList();

            ListVolunteer = db.Volunteers.Where(v => v.CharityExamId == charityExamId).ToList();

        }

        public void RemoveVolunteer(int volunteerId)
        {
            Volunteer = new Volunteer();
            Volunteer = db.Volunteers.Find(volunteerId);
            Volunteer.CharityExamId = null;
            db.SaveChanges();
        }
    }

    //public class VolunteerInfo
    //{
    //    public Volunteer Volunteer { get; set; }
    //    public string VolunteerName { get; set; }
    //}
}
