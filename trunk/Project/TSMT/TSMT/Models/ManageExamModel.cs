using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data;
using System.Data.Entity.Validation;

namespace TSMT.Models
{
    public class ManageExamModel
    {
        readonly TSMTEntities db = new TSMTEntities();
        public Examination Examination { get; set; }
        public List<Examination> ListExam { get; set; }
        public int ExamId { get; set; }
        public String Name { get; set; }
        public String BeginDate { get; set; }
        public String EndDate { get; set; }

        public List<Examination> SelectExams()
        {
            var list = from c in db.Examinations select c;
            return list.ToList();
        }

        public void DeleteExam(int id)
        {
            var examId = db.Examinations.Find(id);
            db.Examinations.Remove(examId);
            db.SaveChanges();
        }

        public bool AddExamination(Examination exam)
        {
            try
            {
                using (var context = new TSMTEntities())
                {
                    context.Examinations.Add(exam);
                    context.SaveChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public void GetExam(int examId)
        {
            Examination = new Examination();
            Examination = db.Examinations.Find(examId);
        }

        public void UpdateExam(Examination exam, int examId)
        {
            var oldExam = db.Examinations.Find(examId);
            oldExam.Name = exam.Name;
            oldExam.BeginDate = exam.BeginDate;
            oldExam.EndDate = exam.EndDate;
            db.SaveChanges();

        }
    }
}