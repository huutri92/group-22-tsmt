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
    
    public partial class UniversitiesExamination
    {
        public UniversitiesExamination()
        {
            this.ExaminationsPapers = new HashSet<ExaminationsPaper>();
            this.Venues = new HashSet<Venue>();
        }
    
        public int UniExamID { get; set; }
        public int UniversityID { get; set; }
        public int ExaminationID { get; set; }
    
        public virtual Examination Examination { get; set; }
        public virtual ICollection<ExaminationsPaper> ExaminationsPapers { get; set; }
        public virtual University University { get; set; }
        public virtual ICollection<Venue> Venues { get; set; }
    }
}
