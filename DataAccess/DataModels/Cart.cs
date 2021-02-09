using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.DataModels
{
    public class Cart
    {
        public int CartId { get; set; }
        public int CartQuantity { get; set; }


        public int ProductId { get; set; }
        public int UserId { get; set; }
    }
}
