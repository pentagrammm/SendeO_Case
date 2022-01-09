using Contracts.Exceptions;
using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts
{
    public static class BaseResponseExecuter
    {
        public static T Execute<T>(Func<T> func) where T : BaseResponseDto, new()
        {
            T result = new T();

            result.ResponseCode = ResponseCodes.Sucess;

            try
            {
                result = func();
            }
            catch (ValidateException vex)
            {

                result.ResponseCode = ResponseCodes.ValidationError;
                result.ResponseMessage = vex.Message;
            }
            catch (CodedException cex)
            {
                result.ResponseCode = cex.Code;
                result.ResponseMessage = cex.Message;

            }
            catch (BusinessException bex)
            {

                result.ResponseCode = ResponseCodes.BusinessError;
                result.ResponseMessage = bex.Message;
            }
            catch (Exception ex)
            {
                result.ResponseCode = ResponseCodes.ErrorSystem;
                result.ResponseMessage = ex.Message;
            }

            return result;
        }

    }
}
