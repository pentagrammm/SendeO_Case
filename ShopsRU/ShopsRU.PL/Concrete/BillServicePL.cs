using Contracts.ShopsRuService.Dto;
using ShopsRU.BLL.Abstract;
using ShopsRU.PL.Abstract;
using ShopsRU.PL.Validation;
using System;
using System.Collections.Generic;
using System.Text;

namespace ShopsRU.PL.Concrete
{
    public class BillServicePL: IBillServicePL
    {
        private readonly IBillServiceBll _billServiceBLL;
        public BillServicePL(IBillServiceBll billServiceBLL)
        {
            _billServiceBLL = billServiceBLL;
        }

        public CalculateBillResponseDto CalculateBill(CalculateBillRequestDto request)
        {
            BillServiceValidation.CalculateBill(request);
           return  _billServiceBLL.CalculateBill(request);
        }
    }
}
