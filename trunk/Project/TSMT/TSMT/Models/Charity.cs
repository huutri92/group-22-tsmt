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
    
    public partial class Charity
    {
        public Charity()
        {
            this.ChairitiesExams = new HashSet<ChairitiesExam>();
        }
    
        public int CharityID { get; set; }
        public int AccountID { get; set; }
        public string PhoneNumber { get; set; }
        public string FullDescription { get; set; }
        public string Name { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ICollection<ChairitiesExam> ChairitiesExams { get; set; }
    }
}
