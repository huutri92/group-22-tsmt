using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Ajax.Utilities;

namespace TSMT.Models
{
    public class CharityCarModel
    {
        readonly TSMTEntities db = new TSMTEntities();
        public List<Car> ListCars { get; set; }
        public int CharityExamId { get; set; }
        public int CharityId { get; set; }
        public int TotalCarsNo { get; set; }
        public List<CarInfo> ListCarInfo;
        public Car Car { get; set; }
        public string NumberPlate { get; set; }
        public int TotalSlot { get; set; }
        public int AvaiableSlot { get; set; }
        public int SponsorId { get; set; }
        public string DriverName { get; set; }
        public string DriverPhone { get; set; }
        public int CarId { get; set; }

        public void GetCarsList(int charityExamId)
        {

            ListCars = new List<Car>();
            ListCarInfo = new List<CarInfo>();

            ListCars = db.Cars.Where(o => o.CharityExamID == charityExamId).ToList();
            TotalCarsNo = ListCars.Count;
            //ListCars = ListCars.OrderByDescending(f => f.AvailableSlots).ToList();

            foreach (var car in ListCars)
            {
                var carInfo = new CarInfo();
                carInfo.Car = car;

                if (car.SponsorID != null)
                {
                    carInfo.SponsorName = car.Sponsor.Account.Profiles.FirstOrDefault().Lastname + " " + car.Sponsor.Account.Profiles.FirstOrDefault().Firstname;
                }

                ListCarInfo.Add(carInfo);
            }

        }

        public void AddNewCar(CharityCarModel carModel)
        {

            Car = new Car();
            Car.NumberPlate = carModel.NumberPlate;
            Car.TotalSlots = carModel.TotalSlot;
            Car.AvailableSlots = carModel.TotalSlot;
            Car.CharityExamID = carModel.CharityExamId;
            Car.DriverName = carModel.DriverName;
            Car.DriverPhone = carModel.DriverPhone;

            db.Cars.Add(Car);
            db.SaveChanges();
        }

        public void GetCarInfo(int carId)
        {
            Car = new Car();
            Car = db.Cars.Find(carId);
        }

        public void EditCar(Car car, int carId)
        {
            
            var oldCar = db.Cars.Find(carId);
            var slot = car.TotalSlots - oldCar.TotalSlots;
            oldCar.NumberPlate = car.NumberPlate;
            oldCar.TotalSlots = car.TotalSlots;
            oldCar.DriverName = car.DriverName;
            oldCar.DriverPhone = car.DriverPhone;
            oldCar.AvailableSlots = oldCar.AvailableSlots + slot;

          
            db.SaveChanges();
        }

        public void DeleteCar(int carId)
        {
            var oldCar = db.Cars.Find(carId);
            db.Cars.Remove(oldCar);
            db.SaveChanges();
        }

        public class CarInfo
        {
            public Car Car { get; set; }
            public string SponsorName { get; set; }
        }

    }
}