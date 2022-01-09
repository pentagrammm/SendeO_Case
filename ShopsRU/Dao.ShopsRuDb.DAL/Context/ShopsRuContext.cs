using Dao.ShopsRuDb.DAL.Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DAL.Context
{
    public class ShopsRuContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Discount> Discounts { get; set; }

        public ShopsRuContext(DbContextOptions options) : base(options)
        {
           
        }         
    }
}
