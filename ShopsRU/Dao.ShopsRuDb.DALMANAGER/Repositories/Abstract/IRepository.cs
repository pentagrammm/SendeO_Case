using System;
using System.Collections.Generic;
using System.Text;

namespace Dao.ShopsRuDb.DALMANAGER.Repositories.Abstract
{
    public interface IRepository<TEntitiy> where TEntitiy : class
    {
        TEntitiy GetById(Guid Id);

        IEnumerable<TEntitiy> GetAll();
    
    }
}
