using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataAssignCar
    {
        public string fname { get; set; }
        public string name { get; set; }
        public string nameLink { get; set; }
        public string lodge { get; set; }
        public string lodgeLink { get; set; }
        public string venue { get; set; }
        public string venueLink { get; set; }
        public string transport { get; set; }
        public string transportLink { get; set; }

        public DataAssignCar()
        {
            this.fname = "";
            this.name = "";
            this.nameLink = "";
            this.lodge = "";
            this.lodgeLink = "";
            this.venue = "";
            this.venueLink = "";
            this.transport = "";
            this.transportLink = "";
        }
    }
}