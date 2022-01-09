using Dao.ShopsRuDb.DAL.Entity;
using System;
using System.Collections.Generic;
using System.Text;

namespace ShopsRU.BLL.Helpler
{
    public static class BillCalculationHelper
    {
        private static decimal GetAmountDiscount(decimal amount)
        {
            decimal _amountDiscount = 0;

            if (amount >= 100)
            {
                _amountDiscount = Math.Floor(amount / 100) * 5;
                return _amountDiscount;
            }

            return _amountDiscount;
        }

        private static decimal GetPercentageAmount(int? discountRatio, decimal amount)
        {
            if (discountRatio == null)
                return 0;
            var _amountPercentage = amount *  discountRatio.Value / 100;
            return _amountPercentage;
        }

        public static decimal GetTotatAmountWithDiscountAndPercentage(int? discountRatio, decimal amount )
        {
            return amount - (GetAmountDiscount(amount) + GetPercentageAmount(discountRatio, amount));
        }

        public static decimal GetTotatAmountWithDiscount(decimal amount)
        {
            var aa = amount - GetAmountDiscount(amount);
            return aa;
        }
    }
}
