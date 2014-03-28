using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TSMT.Models;

namespace TSMT.Models
{
    public class ExaminationPlace
    {
        public int ExamPlaceID { get; set; }
        public int Quantity { get; set; }
        public List<ExaminationsPaper> Eps { get; set; }

        public ExaminationPlace(int examPlaceID, List<ExaminationsPaper> eps)
        {
            this.ExamPlaceID = examPlaceID;
            this.Eps = eps;
            this.Quantity = eps.Count;
        }
    }
}