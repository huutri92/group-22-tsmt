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
    
    public partial class SchedulesCar
    {
        public SchedulesCar()
        {
            this.DetailsSchedulesCars = new HashSet<DetailsSchedulesCar>();
        }
    
        public int ScheduleCarID { get; set; }
        public int CarID { get; set; }
        public int JoinInID { get; set; }
    
        public virtual Car Car { get; set; }
        public virtual ICollection<DetailsSchedulesCar> DetailsSchedulesCars { get; set; }
        public virtual JoinsIn JoinsIn { get; set; }
    }
}
