using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class DataVenueAssignCar
    {
        public int venueID { get; set; }
        public int lodgeID { get; set; }
        public int quantity { get; set; }
        public DataVenueAssignCar()
        {
            this.venueID = -1;
            this.lodgeID = -1;
            this.quantity = 0;
        }
        public DataVenueAssignCar(int veId, int lodId, int quantity)
        {
            this.venueID = veId;
            this.lodgeID = lodId;
            this.quantity = quantity;
        }
    }
}