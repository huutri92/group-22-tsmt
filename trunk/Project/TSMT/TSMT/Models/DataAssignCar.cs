using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataAssignCar
    {
        public string lname { get; set; }
        public string fname { get; set; }
        public string lodge { get; set; }
        public string venue { get; set; }
        public string status { get; set; }
        public string note { get; set; }
        public string actions { get; set; }

        public DataAssignCar()
        {
            this.lname = "";
            this.fname = "";
            this.lodge = "";
            this.venue = "";
            this.status = "";
            this.note = "";
            this.actions = "";
        }
    }
}