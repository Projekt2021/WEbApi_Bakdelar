using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TestApi.Models
{
    public class ProductImage
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ProductImageID { get; set; }
        [Required()]
        public string ImageUrl { get; set; }
#nullable enable
        [ForeignKey("Product")]
        public virtual int? ProductID { get; set; }
        public virtual Product? Product { get; set; }

    }
}
