using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts
{
    public static class ResponseCodes
    {
        public const int Sucess = 0;

        public const int Error = -1;

        public const int ErrorSystem = -2;

        public const int ErrorDatabase = -3;

        public const int Warning = -4;

        public const int ValidationError = -10;

        public const int BusinessError = -20;
    }
}
