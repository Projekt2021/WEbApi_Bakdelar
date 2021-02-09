using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DataAccess.DataModels
{
    public class Purchase
    {
        
        public int PrductId { get; set; }

        public int UserId { get; set; }

        [DataType(DataType.Date)]
        public DateTime OrderDate { get; set; }
        [Required, MaxLength(50), StringLength(50)]


        [DataType(DataType.Date)]
        public DateTime DeliveryDate { get; set; }
        [Required, MaxLength(50), StringLength(50)]

        public string PurchaseStatus { get; set; }

    }
}
