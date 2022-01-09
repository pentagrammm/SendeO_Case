using Contracts.ShopsRuService.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace ShopsRU.PL.Abstract
{
    public interface IBillServicePL
    {
        CalculateBillResponseDto CalculateBill(CalculateBillRequestDto request);
    }
}
