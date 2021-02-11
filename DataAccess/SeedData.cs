using DataAccess.DataModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class SeedData
    {
        public SeedData()
        {

        }

        public static void Seeding(UserManager<ApplicationUser> userManager, RoleManager<ApplicationRole> roleManager, BakdelarAppDbContext context)
        {
            if (!context.Categories.Any())
            {
                context.Categories.AddRange(
                     new Category
                     {
                         CategoryName = "Födelsedag"
                     },

                     new Category
                     {
                         CategoryName = "Valentine"
                     },

                     new Category
                     {
                         CategoryName = "Anniversary"
                     },

                     new Category
                     {
                         CategoryName = "Bakverktyg"
                     },

                     new Category
                     {
                         CategoryName = "Apparater"
                     });
                context.SaveChanges();
            }          

            if (!context.Roles.Any())
            {
                context.Roles.AddRange(
                     new ApplicationRole
                     {
                         Id = "b562e963-6e7e-4f41-8229-4390b1257hg6",
                         Description = "This Is AdminUser",
                         Name = "Admin",
                         NormalizedName = "ADMIN"
                     });
                context.SaveChanges();
            }


            if (!context.Users.Any())
            {
                ApplicationUser user = new ApplicationUser
                {
                    Customer = new Customer
                    {
                        UserPhoneNumber = "+46154584841",
                        UserAddress = "Sweden"
                    },
                    UserName = "admin",
                    NormalizedUserName = "ADMIN",
                    Email = "admin@bakdelar.com",
                    PasswordHash = HashPassword("bakdelar1216"),
                    LockoutEnabled = false,
                    SecurityStamp = Guid.NewGuid().ToString()
                };

               
                context.Users.Add(user);
                context.SaveChanges();

                IdentityUserRole<string> ur = new IdentityUserRole<string>();
                ur.RoleId = "b562e963-6e7e-4f41-8229-4390b1257hg6";
                ur.UserId = user.Id.ToString();

                context.UserRoles.Add(ur);
                context.SaveChanges();

            }
        }

        private static string HashPassword(string password)
        {
            byte[] salt;
            byte[] buffer2;
            if (password == null)
            {
                throw new ArgumentNullException("password");
            }
            using (Rfc2898DeriveBytes bytes = new Rfc2898DeriveBytes(password, 0x10, 0x3e8))
            {
                salt = bytes.Salt;
                buffer2 = bytes.GetBytes(0x20);
            }
            byte[] dst = new byte[0x31];
            Buffer.BlockCopy(salt, 0, dst, 1, 0x10);
            Buffer.BlockCopy(buffer2, 0, dst, 0x11, 0x20);
            return Convert.ToBase64String(dst);
        }
    }
}
