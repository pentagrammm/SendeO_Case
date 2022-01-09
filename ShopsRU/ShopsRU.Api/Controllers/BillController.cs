using Contracts;
using Contracts.ShopsRuService;
using Contracts.ShopsRuService.Dto;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ShopsRU.PL.Abstract;
using ShopsRU.PL.Validation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ShopsRU.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BillController : ControllerBase,IBillController
    {
        private readonly IBillServicePL _billServicePL;
        public BillController(IBillServicePL billServicePL)
        {
            _billServicePL = billServicePL;
        }

        [HttpGet("CalculateBill")]
        public CalculateBillResponseDto CalculateBill(CalculateBillRequestDto request)
        {
            return BaseResponseExecuter.Execute(() => _billServicePL.CalculateBill(request));
        }
    }
}
