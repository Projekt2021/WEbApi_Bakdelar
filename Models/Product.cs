using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace TestApi.Models
{
    public class Product
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required()]
        public string ProductName { get; set; }
        [Required()]
        public string ProductDescription { get; set; }
#nullable enable
        //public virtual List<ProductImage>? ProductImages { get; set; }
        [ForeignKey("ProductImage")]
        public virtual int ProductImageID { get; set; }
        public virtual ProductImage? ProductImage { get; set; }
#nullable disable
        [Required()]
        [ForeignKey("Category")]
        public virtual int CategoryID { get; set; }
        public double SalePrice { get; set; }

    }
}
