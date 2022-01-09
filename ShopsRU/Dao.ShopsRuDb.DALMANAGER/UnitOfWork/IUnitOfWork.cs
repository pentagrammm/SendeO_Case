using Dao.ShopsRuDb.DALMANAGER.Repositories.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DALMANAGER.UnitOfWork
{
    public interface IUnitOfWork:IDisposable
    {
        ICustomerRepository CustomerRepository { get; }
        IDiscountRepository DiscountRepository { get; }
    }
}
