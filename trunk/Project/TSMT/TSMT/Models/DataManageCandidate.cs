using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataManageCandidate
    {
        public string fname { get; set; }
        public string name { get; set; }
        public string nameLink { get; set; }
        public string gender { get; set; }
        public string lodge { get; set; }
        public string lodgeLink { get; set; }
        public string group { get; set; }
        public string groupLink { get; set; }

        public DataManageCandidate()
        {
            this.fname = "";
            this.name = "";
            this.nameLink = "";
            this.gender = "";
            this.lodge = "";
            this.lodgeLink = "";
            this.group = "";
            this.groupLink = "";
        }
    }
}