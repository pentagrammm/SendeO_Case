using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DAL.Entity
{
    public class Customer
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public Guid? DiscountId { get; set; }        
    }
}
