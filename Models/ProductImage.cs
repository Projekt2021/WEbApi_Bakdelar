using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestApi.Models
{
    public class ProductImage
    {
        public int ProductImageID { get; set; }
        public string ImageUrl { get; set; }
        public int ProductID { get; set; }
    }
}
