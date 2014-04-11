using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataAssignRoom
    {
        public string lname { get; set; }
        public string fname { get; set; }
        public string lodge { get; set; }
        public string gender { get; set; }
        public string group { get; set; }
        public string room { get; set; }

        public DataAssignRoom()
        {
            this.lname = "";
            this.fname = "";
            this.lodge = "";
            this.gender = "";
            this.group = "";
            this.room = "";
        }
    }
}