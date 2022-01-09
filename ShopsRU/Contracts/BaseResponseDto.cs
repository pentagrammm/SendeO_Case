using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts
{
    [JsonObject(MemberSerialization.OptIn)]
    public class BaseResponseDto
    {
        [JsonProperty("ResponseCode")]
        public int ResponseCode { get; set; }
        [JsonProperty("ResponseMessage")]
        public string ResponseMessage { get; set; }
        [JsonProperty("Success")]
        public bool Success
        {
            get
            {
                return ResponseCode >= 0;
            }

            set { ResponseCode = value ? ResponseCodes.Sucess : (ResponseCode == 0 ? ResponseCodes.Error : ResponseCode); }
        }
    }
}
