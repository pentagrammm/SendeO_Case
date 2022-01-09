using Dao.ShopsRuDb.DAL.Context;
using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DALMANAGER
{
    public abstract class BaseDalmanager
    {
        protected ShopsRuContext _context;

        public BaseDalmanager(ShopsRuContext context)
        {
            _context = context;
        }
    }
}
