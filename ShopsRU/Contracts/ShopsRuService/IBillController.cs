using Contracts.ShopsRuService.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts.ShopsRuService
{
    public interface IBillController
    {
        CalculateBillResponseDto CalculateBill(CalculateBillRequestDto request);
    }
}
