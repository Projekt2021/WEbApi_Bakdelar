using DataAccess.DataModels;
using Microsoft.EntityFrameworkCore;
using System;

namespace DataAccess
{
    public class BakdelarAppDbContext : DbContext
    {
        public BakdelarAppDbContext(DbContextOptions<BakdelarAppDbContext> options)
            :base(options)
        {
        }

        //public DbSet<User> Users { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<ProductImage> ProductImages { get; set; }
        //public DbSet<Purchase> Purchases { get; set; }
        public DbSet<Category> Categories { get; set; }
        //public DbSet<Cart> Carts { get; set; }
    }
}
