using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataManageUniversity
    {
        public string name { get; set; }
        public string code { get; set; }
        public string address { get; set; }
        public string actions { get; set; }

        public DataManageUniversity()
        {
            this.name = "";
            this.code = "";
            this.address = "";
            this.actions = "";
        }
    }
}