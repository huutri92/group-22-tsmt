using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.EntityModel;
using System.Data;
using System.Data.Entity;

namespace TSMT.Models
{
    public class DataAccess
    {
        TSMTEntities db = new TSMTEntities();
        public Category Category { get; set; }
        public int CategoryID {get; set;}
        public string CategoryName {get; set;}
        public List<Category> listcategories {get; set;}

        //public Fund Fund { get; set; }
        //public int FundID { get; set; }
        //public string FundSponsored { get; set; }
        //public bool IsOnlineFunding { get; set; }
        //public List<Fund> listFunds { get; set; }

        public List<Category> SelectCategories()
        {
            var list = from c in db.Categories select c;
            return list.ToList();
        }

        public int InsertCategory(Category cat)
        {
            db.Categories.Add(cat);
            int r = db.SaveChanges();
            return r;
        }
        public int DeleteCategory(int id)
        {
            var cat = db.Categories.Where(c => c.CategoryID == id).FirstOrDefault();
            db.Categories.Remove(cat);
            int r = db.SaveChanges();
            return r;
        }
        public void GetCategoryInfo(int cartegoryID)
        {
            Category = new Category();
            Category = db.Categories.Find(cartegoryID);
            CategoryID = Category.CategoryID;
            CategoryName = Category.CategoryName;
        }
        public void EditCategory(DataAccess model)
        {
       
            var oldCategory = db.Categories.Find(model.CategoryID);
            oldCategory.CategoryName = model.CategoryName;
            
            db.SaveChanges();
        }

        //public void GetFundInfo(int fundID)
        //{
        //    Fund = new Fund();
        //    Fund = db.Funds.Find(fundID);
        //    FundID = Fund.FundID;
            
        //    IsOnlineFunding = Fund.IsOnlineFunding;
            
        //}

        public List<Fund> SelectFunds()
        {
            var list = from c in db.Funds select c;
            return list.ToList();
        }
        public int InsertFund(Fund fund)
        {
            db.Funds.Add(fund);
            int r = db.SaveChanges();
            return r;
        }

        public int DeleteFund(int id)
        {
            var fund = db.Funds.Where(c => c.FundID == id).FirstOrDefault();
            db.Funds.Remove(fund);
            int r = db.SaveChanges();
            return r;
        }
    }
}