using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data;
using System.Web.Mvc;

namespace TSMT.Models
{
    public class ManageVenueModel
    {
        readonly TSMTEntities db = new TSMTEntities();
        public Venue Venue { get; set; }
        public List<Venue> ListVenues { get; set; }
        public int VenueId { get; set; }
        public IEnumerable<SelectListItem> UniExamId { get; set; }
        public String District { get; set; }
        public String Name { get; set; }
        public String Address { get; set; }

        public List<Venue> SelectVenues()
        {
            var list = from c in db.Venues select c;
            return list.ToList();
        }

        public int DeleteVenue(int id)
        {
            var ex = db.Venues.FirstOrDefault(c => c.VenueID == id);
            db.Venues.Remove(ex);
            int r = db.SaveChanges();
            return r;
        }
        public bool AddVenue(Venue ven)
        {
            try
            {
                using (var context = new TSMTEntities())
                {
                    context.Venues.Add(ven);
                    context.SaveChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public void GetVenue(int venueId)
        {
            Venue = new Venue();
            Venue = db.Venues.Find(venueId);
        }

        public void UpdateVenue(Venue venue, int venueId)
        {
            var oldVenue = db.Venues.Find(venueId);
            oldVenue.Address = venue.Address;
            oldVenue.District = venue.District;
            oldVenue.Name = venue.Name;
            oldVenue.UniExamID = venue.UniExamID;
            db.SaveChanges();

        }
    
    }
}