using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace DataAccess.DataModels
{
    public class Product
    {
        [Key]
        public int ProductId { get; set; }
        
        [Required, MaxLength(100), StringLength(100)]
        public string ProductName { get; set; }

        [Required, MaxLength(500), StringLength(500)]
        public string ProductDescription { get; set; }

        [Required, Column(TypeName = "decimal(5, 2)")]
        public decimal ProductPrice { get; set; }
        
        public int AvailableQuantity { get; set; }
        public double ProductWeight { get; set; }


        public ICollection<ProductImage> ProductImages { get; set; }

        [ForeignKey("Category")]
        public int CategoryId { get; set; }
        public Category Category { get; set; }
    }
}
