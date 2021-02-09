using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TestApi.Models
{
    public class Category
    {
        public int CategoryID { get; set; }
        [Required()]
        public string CategoryText { get; set; }
    }
}
