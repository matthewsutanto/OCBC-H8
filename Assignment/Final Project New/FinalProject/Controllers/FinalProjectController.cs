using System.Net;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using FinalProject.Data;
using FinalProject.Models;

namespace FinalProject.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class FinalProjectController : ControllerBase
    {
        private readonly ApiDbContext _context;

        public FinalProjectController(ApiDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetPayments()
        {
            var paymentDetails = await _context.PaymentDetails.ToListAsync();
            return Ok(paymentDetails);
        }

        [HttpPost]
        public async Task<IActionResult> CreatePaymentDetails(PaymentDetails data)
        {
            if(ModelState.IsValid)
            {
                await _context.PaymentDetails.AddAsync(data);
                await _context.SaveChangesAsync();
                
                return CreatedAtAction("GetPayment", new {data.Id}, data);
            }

            return new JsonResult("Something went wrong") {StatusCode = 500};
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetPayment(int id)
        {
            var payment = await _context.PaymentDetails.FirstOrDefaultAsync(x => x.Id == id);

            if(payment == null)
                return NotFound();
            
            object[] newArray = new object[2];
            newArray[0] = "Ini data yang berhasil didapat";
            newArray[1] = payment;
            return Ok(newArray);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdatePayment(int id, PaymentDetails data)
        {
            if(id != data.Id)
                return BadRequest();
            
            var existPayment = await _context.PaymentDetails.FirstOrDefaultAsync(x => x.Id == id);

            if(existPayment == null)
                return  NotFound();
            
            existPayment.CardOwnerName = data.CardOwnerName;
            existPayment.CardNumber = data.CardNumber;
            existPayment.ExpirationDate = data.ExpirationDate;
            existPayment.SecurityCode = data.SecurityCode;
            
            await _context.SaveChangesAsync();

            object[] newArray = new object[2];
            newArray[0] = "Berhasil diperbaharui";
            newArray[1] = existPayment;
            return Ok(newArray);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePayment(int id)
        {
            var existPayment = await _context.PaymentDetails.FirstOrDefaultAsync(x => x.Id == id);

            if(existPayment == null)
                return NotFound();

            _context.PaymentDetails.Remove(existPayment);

            await _context.SaveChangesAsync();

            object[] newArray = new object[2];
            newArray[0] = "Berhasil dihapus";
            newArray[1] = existPayment;
            return Ok(newArray);
        }
    }
}