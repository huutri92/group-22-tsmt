using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data;
using System.Data.EntityModel;

namespace TSMT.Models
{
    public class CarDBModel
    {
        TSMTEntities db = new TSMTEntities();
        public List<Car> SelectCar()
        {
            var list = from c in db.Cars.Where(c => c.SponsorID != null) select c;
            return list.ToList();
        }
        public int InsertCar(Car car)
        {
            db.Cars.Add(car);
            int r = db.SaveChanges();
            return r;
        }
        public int DeleteCar(int id)
        {
            var car = db.Cars.Where(c => c.CarID == id).FirstOrDefault();
            db.Cars.Remove(car);
            int r = db.SaveChanges();
            return r;
        }
    }
}