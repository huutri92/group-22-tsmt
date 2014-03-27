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
    
    public partial class Article
    {
        public Article()
        {
            this.ArticlesTags = new HashSet<ArticlesTag>();
            this.Comments = new HashSet<Comment>();
        }
    
        public int ArticleID { get; set; }
        public string Title { get; set; }
        public int CategoryID { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public int CreatedBy { get; set; }
        public string Content { get; set; }
        public Nullable<System.DateTime> LastModifiedOn { get; set; }
        public string AvatarImage { get; set; }
        public bool IsAprroved { get; set; }
        public string Summary { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual Category Category { get; set; }
        public virtual ICollection<ArticlesTag> ArticlesTags { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
    }
}
