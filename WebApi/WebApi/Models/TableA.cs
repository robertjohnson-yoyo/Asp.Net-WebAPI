using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApi.Models
{
    public class TableA
    {
        [Key]
        public int NameId { get; set; }

        public string Name { get; set; }
        public DateTime LastRefresh { get; set; }

        public string IsYesOrNo { get; set; }
        public string POSTGradYN { get; set; }
    }
}