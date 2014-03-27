using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace TSMT.Models
{
    public class AdminUniExaModel
    {
        TSMTEntities db = new TSMTEntities();
        public List<University> ListUniversitites { get; set; }
        public List<Examination> ListExaminations { get; set; }
        public UniversitiesExamination UniverExam { get; set; }
        public List<UniversitiesExamination> ListUniverExam { get; set; } 

        public int UniversityId { get; set; }
        public int ExaminationId { get; set; }

        public void GetUniversityAndExam()
        {
            ListExaminations = new List<Examination>();
            ListUniversitites = new List<University>();
            ListUniverExam = new List<UniversitiesExamination>();

            ListUniverExam = db.UniversitiesExaminations.ToList();
            ListExaminations = db.Examinations.ToList();
            ListUniversitites = db.Universities.ToList();
        }

        public void AddUniversityExam(int UniverId, int ExamId)
        {
            UniverExam = new UniversitiesExamination();
            UniverExam.UniversityID = UniverId;
            UniverExam.ExaminationID = ExamId;

            db.UniversitiesExaminations.Add(UniverExam);
            db.SaveChanges();
        }
    }

    
}