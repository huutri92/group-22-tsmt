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
    
    public partial class Tag
    {
        public Tag()
        {
            this.ArticlesTags = new HashSet<ArticlesTag>();
        }
    
        public int TagID { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<ArticlesTag> ArticlesTags { get; set; }
    }
}
