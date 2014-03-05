//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TSMT
{
    using System;
    using System.Collections.Generic;
    
    public partial class Examination
    {
        public Examination()
        {
            this.ChairitiesExams = new HashSet<ChairitiesExam>();
            this.DetailsScheduleExams = new HashSet<DetailsScheduleExam>();
            this.UniversitiesExaminations = new HashSet<UniversitiesExamination>();
        }
    
        public int ExaminationID { get; set; }
        public string Name { get; set; }
        public System.DateTime BeginDate { get; set; }
        public System.DateTime EndDate { get; set; }
    
        public virtual ICollection<ChairitiesExam> ChairitiesExams { get; set; }
        public virtual ICollection<DetailsScheduleExam> DetailsScheduleExams { get; set; }
        public virtual ICollection<UniversitiesExamination> UniversitiesExaminations { get; set; }
    }
}
