using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TSMT.Models
{
    public class ImportFromExcel
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string UniversityCode { get; set; }
        public string Website { get; set; }
        public int Phone { get; set; }
        public bool IsRemovable { get; set; }
    }
}