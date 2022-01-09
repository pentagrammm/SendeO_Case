using Contracts.ShopsRuService.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace ShopsRU.BLL.Abstract
{
    public interface IBillServiceBll
    {
        CalculateBillResponseDto CalculateBill(CalculateBillRequestDto request);
    }
}
