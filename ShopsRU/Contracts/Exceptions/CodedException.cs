using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts.Exceptions
{
    [Serializable]
    public class CodedException : Exception
    {
        public int Code { get; private set; }

        public CodedException() : base()
        {
        }
        public CodedException(int code, string message) : base(message)
        {

            this.Code = code;
        }
    }
}
