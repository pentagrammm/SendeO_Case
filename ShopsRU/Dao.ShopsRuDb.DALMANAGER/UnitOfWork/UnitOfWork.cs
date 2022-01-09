using Dao.ShopsRuDb.DAL.Context;
using Dao.ShopsRuDb.DALMANAGER.Repositories.Abstract;
using Dao.ShopsRuDb.DALMANAGER.Repositories.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DALMANAGER.UnitOfWork
{
    public class UnitOfWork :BaseDalmanager, IUnitOfWork
    {
        public UnitOfWork(ShopsRuContext context):base(context)
        {
            CustomerRepository = new CustomerRepository(_context);
            DiscountRepository = new DiscountRepository(_context);
        }
        public ICustomerRepository CustomerRepository { get; private set; }

        public IDiscountRepository DiscountRepository { get; private set; }

        public void Dispose()
        {
        }
    }
}
