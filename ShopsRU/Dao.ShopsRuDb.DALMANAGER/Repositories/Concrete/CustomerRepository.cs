﻿using Dao.ShopsRuDb.DAL.Context;
using Dao.ShopsRuDb.DAL.Entity;
using Dao.ShopsRuDb.DALMANAGER.Repositories.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DALMANAGER.Repositories.Concrete
{
    public class CustomerRepository : Repository<Customer>, ICustomerRepository
    {
        public CustomerRepository(ShopsRuContext context) : base(context)
        {

        }
    }
}
