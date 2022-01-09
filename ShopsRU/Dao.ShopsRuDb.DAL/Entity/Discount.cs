using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DAL.Entity
{
    public class Discount
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public int Ratio { get; set; }
    }
}
