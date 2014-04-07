using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataFindFriend
    {
        public string name { get; set; }
        public string gender { get; set; }
        public string group { get; set; }
        public string actions { get; set; }
        public string note { get; set; }

        public DataFindFriend()
        {
            this.name = "";
            this.gender = "";
            this.group = "";
            this.actions = "";
            this.note = "";
        }
    }
}