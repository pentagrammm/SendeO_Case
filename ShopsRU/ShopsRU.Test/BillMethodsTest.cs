using Dao.ShopsRuDb.DAL.Context;
using ShopsRU.BLL.Concrete;
using ShopsRU.BLL.Helpler;
using System;
using Xunit;

namespace ShopsRU.Test
{
    public class BillMethodsTest
    {
        [Fact]
        public void GetTotatAmountWithDiscount()
        {
           var result = BillCalculationHelper.GetTotatAmountWithDiscount(990);
           Assert.Equal(945, result);
        }

        [Fact]
        public void GetTotatAmountWithDiscountAndPercentage()
        {
            var result = BillCalculationHelper.GetTotatAmountWithDiscountAndPercentage(10, 150);
            Assert.Equal(130, result);
        }

        [Fact]
        public void GetTotatAmountWithDiscountAndPercentageNUllRatio()
        {
            var result = BillCalculationHelper.GetTotatAmountWithDiscountAndPercentage(null,150);
            Assert.Equal(145, result);        
        }
    }
}
