using Contracts.Exceptions;
using Contracts.ShopsRuService.Dto;
using Contracts.ShopsRuService.Type;
using System;
using System.Collections.Generic;
using System.Text;

namespace ShopsRU.PL.Validation
{
    public static class BillServiceValidation
    {
        public static void CalculateBill(CalculateBillRequestDto request)
        {
            if (request.SectorType != SectorType.Groceries.ToString() && request.SectorType != SectorType.Textile.ToString())
                throw new ValidateException("Invalid Sector Type");
            if (request.UserId == Guid.Empty)
                throw new ValidateException("UserId can not be empty");
            if (request.Amount < 0)
                throw new ValidateException("Amount can not be less then zero");           
        }
    }
}
