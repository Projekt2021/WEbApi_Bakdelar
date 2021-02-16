using DataAccess.DataModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;

namespace DataAccess
{
    public class BakdelarAppDbContext : IdentityDbContext<ApplicationUser>
    {
        public BakdelarAppDbContext(DbContextOptions<BakdelarAppDbContext> options)
            : base(options)
        {
        }

        public DbSet<Customer> Customer { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<ProductImage> ProductImages { get; set; }
        public DbSet<Purchase> Purchases { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Cart> Carts { get; set; }


        //public DbSet<IdentityRole> ApplicationRole { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //modelBuilder.Entity<IdentityUserLogin<string>>().HasKey(p => new { p.UserId });
            //modelBuilder.Entity<IdentityUserRole<string>>().HasKey(p => new { p.UserId });
            //modelBuilder.Entity<IdentityUserToken<string>>().HasKey(p => new { p.UserId });
            //modelBuilder.Entity<IdentityUserClaim<string>>().HasKey(p => new { p.Id });
            //modelBuilder.Entity<ApplicationRole>().HasKey(p => new { p.Id });
            //modelBuilder.Entity<ApplicationUser>().HasKey(p => new { p.Id });
        }
    }
}
