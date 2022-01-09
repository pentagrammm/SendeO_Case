using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts.Exceptions
{
    [Serializable]
    public class ValidateException : Exception
    {
        public ValidateException() : base()
        {

        }

        public ValidateException(string message) : base(message)
        {

        }

    }
}
