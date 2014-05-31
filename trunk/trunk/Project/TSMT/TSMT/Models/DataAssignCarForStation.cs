using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataAssignCarForStation
    {
        public string fname { get; set; }
        public string name { get; set; }
        public string nameLink { get; set; }
        public string station { get; set; }
        public string pickuptime { get; set; }
        public string transport { get; set; }
        public string transportLink { get; set; }

        public DataAssignCarForStation()
        {
            this.fname = "";
            this.name = "";
            this.nameLink = "";
            this.station = "";
            this.pickuptime = "";
            this.transport = "";
            this.transportLink = "";
        }
    }
}