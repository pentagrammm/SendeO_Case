using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts.ShopsRuService.Dto
{
    public class CalculateBillResponseDto : BaseResponseDto
    {
        [JsonProperty("Amount")]
        public decimal Amount { get; set; }
    }
}
