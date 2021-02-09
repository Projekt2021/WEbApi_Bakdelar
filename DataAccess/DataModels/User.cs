using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace DataAccess.DataModels
{
    public class User
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int UserId { get; set; }
       
        [Required, MaxLength(100), StringLength(110)]
        public string UserName { get; set; }

        [Required, MaxLength(50), StringLength(50)]
        public string Password { get; set; }

        [Required, MaxLength(500), StringLength(500)]
        public string UserAddress { get; set; }

        [Required, MaxLength(20), StringLength(20)]
        public string UserPhoneNumber { get; set; }


        public ICollection<Cart> Carts { get; set; }
        public ICollection<Purchase> Purchases { get; set; }
    }
}
