using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DataAccess.DataModels
{
    public class User
    {
        [Key]
        public int UserId { get; set; }
        [Required, MaxLength(100), StringLength(110)]

        public string UserName { get; set; }
        [Required, MaxLength(50), StringLength(50)]

        public string Password { get; set; }
        [Required, MaxLength(50), StringLength(50)]

        public string UserAddress { get; set; }

        public string UserPhoneNumber { get; set; }
    }
}
