using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace TestApi.Models
{
    public class Product
    {
        public int Id { get; set; }
        [Required()]
        public string ProductName { get; set; }
        [Required()]
        public string ProductDescription { get; set; }
        [Required()]
        public ICollection<ProductImage> ProductImages { get; set; }
        [Required()]
        public Category Category { get; set; }
        public double SalePrice { get; set; }

    }
}
