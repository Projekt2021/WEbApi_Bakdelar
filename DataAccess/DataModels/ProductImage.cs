using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace DataAccess.DataModels
{
    public class ProductImage
    {
        [Key]
        public int ImageId { get; set; }
        [Required, MaxLength(100), StringLength(100)]

        public string ImageURL { get; set; }

        [ForeignKey("Product")]
        public int ProductId { get; set; }

        public Product Product { get; set; }


    }
}
