using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts.Exceptions
{
    [Serializable]
    public class BusinessException : Exception
    {
        public BusinessException() : base()
        {

        }
        public BusinessException(string message) : base(message)
        {

        }
    }
}
