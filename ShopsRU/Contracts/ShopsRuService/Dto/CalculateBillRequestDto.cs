using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts.ShopsRuService.Dto
{
    public class CalculateBillRequestDto : BaseRequestDto
    {
        [JsonProperty("UserId")]
        public Guid UserId { get; set; }

        [JsonProperty("Amount")]
        public decimal Amount { get; set; }

        [JsonProperty("SectorType")]
        public string SectorType { get; set; }
    }
}
