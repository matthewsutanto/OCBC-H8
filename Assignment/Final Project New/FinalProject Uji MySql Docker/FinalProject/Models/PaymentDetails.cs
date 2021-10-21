using System;
namespace FinalProject.Models
{
    public class PaymentDetails
    {
        public int Id { get; set; }
        public string CardOwnerName { get; set; }
        public string CardNumber { get; set; }
        public DateTime ExpirationDate { get; set; }
        public string SecurityCode { get; set; }
    }
}