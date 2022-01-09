using Dao.ShopsRuDb.DAL.Context;
using Dao.ShopsRuDb.DAL.Entity;
using Dao.ShopsRuDb.DALMANAGER.Repositories.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DALMANAGER.Repositories.Concrete
{
    public class DiscountRepository : Repository<Discount>, IDiscountRepository
    {
        public DiscountRepository(ShopsRuContext context) : base(context)
        {

        }
    }
}
