using Contracts.Exceptions;
using Contracts.ShopsRuService.Dto;
using Contracts.ShopsRuService.Type;
using Dao.ShopsRuDb.DAL.Context;
using Dao.ShopsRuDb.DAL.Entity;
using Dao.ShopsRuDb.DALMANAGER.UnitOfWork;
using ShopsRU.BLL.Abstract;
using ShopsRU.BLL.Helpler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ShopsRU.BLL.Concrete
{
    public class BillServiceBll : IBillServiceBll
    {
        private readonly ShopsRuContext _db;
        public BillServiceBll(ShopsRuContext db)
        {
            _db = db;
        }
        public CalculateBillResponseDto CalculateBill(CalculateBillRequestDto request)
        {

            using (var unitOfWork = new UnitOfWork(_db))
            {
                var customer = unitOfWork.CustomerRepository.GetById(request.UserId);

                if (customer == null)
                    throw new BusinessException("User Not Found");

                Discount discount = null;
                if (customer.DiscountId.HasValue)
                    discount = unitOfWork.DiscountRepository.GetById(customer.DiscountId.Value);

                var sectorType = (SectorType)Enum.Parse(typeof(SectorType), request.SectorType);

                decimal amount;
                if (sectorType == SectorType.Groceries)
                {
                    amount = BillCalculationHelper.GetTotatAmountWithDiscount(request.Amount);

                    return new CalculateBillResponseDto
                    {
                        Amount = amount
                    };
                }
                
                amount = BillCalculationHelper.GetTotatAmountWithDiscountAndPercentage(discount?.Ratio, request.Amount);

                return new CalculateBillResponseDto
                {
                    Amount = amount
                };
            }
        }
    
    }
}
