//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TSMT.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SchedulesVolunteer
    {
        public int ScheduleVolunteerID { get; set; }
        public int VolunteerID { get; set; }
        public System.DateTime Day { get; set; }
        public System.DateTime PickUpTime { get; set; }
        public System.DateTime ArriveTime { get; set; }
        public Nullable<int> ExamPaperID { get; set; }
        public string StartEndPoint { get; set; }
        public string WayPoint { get; set; }
    
        public virtual ExaminationsPaper ExaminationsPaper { get; set; }
        public virtual Volunteer Volunteer { get; set; }
    }
}