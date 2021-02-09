using System;
using System.Collections.Generic;
using System.Text;

namespace TestApi.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public string ImageLink { get; set; }
        public double SalePrice { get; set; }
        public string Secret { get; set; }

    }
}
