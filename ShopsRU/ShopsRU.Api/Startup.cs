using Dao.ShopsRuDb.DAL.Context;
using Dao.ShopsRuDb.DAL.Entity;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using ShopsRU.BLL.Abstract;
using ShopsRU.BLL.Concrete;
using ShopsRU.PL.Abstract;
using ShopsRU.PL.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ShopsRU.Api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;

        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers().AddNewtonsoftJson();
            services.AddDbContext<ShopsRuContext>(options => options.UseInMemoryDatabase("ShopsRu"));
            
            services.AddTransient<IBillServicePL, BillServicePL>();
            services.AddTransient<IBillServiceBll, BillServiceBll>();
            services.AddTransient(typeof(ShopsRuContext));
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            var scope = app.ApplicationServices.CreateScope();
            var context = scope.ServiceProvider.GetRequiredService<ShopsRuContext>();
            AddFakeData(context);


            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }

        private static void AddFakeData(ShopsRuContext context)
        {

            var discount1 = new Discount
            {
                Id = Guid.Parse("51307ef1-a003-4c4c-bf3b-9e0e2ccb198b"),
                Name = "%Employee %30 Discount",
                Ratio = 30
            };

            var discount2 = new Discount
            {
                Id = Guid.Parse("24c8e649-1e28-4529-93b6-8114c033079d"),
                Name = "Affiliate of the store %10 Discount",
                Ratio = 10
            };

            var discount3 = new Discount
            {
                Id = Guid.Parse("b45e3399-7f4f-4687-af7a-21c0a472f577"),
                Name = "Customer for over 2 years %5 Discount",
                Ratio = 5
            };

            var customer1 = new Customer
            {
                Id = Guid.Parse("20415bce-98f8-4df4-8cc0-9ed16a2013a0"),
                Name = "Alkan",
                Surname = "Timurlenk",
                DiscountId = Guid.Parse("51307ef1-a003-4c4c-bf3b-9e0e2ccb198b")
            };

            var customer2 = new Customer
            {
                Id = Guid.Parse("329f8e06-e334-47b6-9ff7-03eca795bd62"),
                Name = "Yasin",
                Surname = "Duymaz",
                DiscountId = Guid.Parse("24c8e649-1e28-4529-93b6-8114c033079d")
            };

            var customer3 = new Customer
            {
                Id = Guid.Parse("3e8d458f-be44-4b61-92f2-542fd73c828a"),
                Name = "Cansu",
                Surname = "Güler",
                DiscountId = Guid.Parse("b45e3399-7f4f-4687-af7a-21c0a472f577")
            };

            var customer4 = new Customer
            {
                Id = Guid.Parse("1584c331-d7dd-4f18-9b7d-3e48cd13ef9c"),
                Name = "Mehmet",
                Surname = "Bilen",
            };

            context.Add(discount1);
            context.Add(discount2);
            context.Add(discount3);

            context.Add(customer1);
            context.Add(customer2);
            context.Add(customer3);
            context.Add(customer4);
            context.SaveChanges();
        }
    }
}
