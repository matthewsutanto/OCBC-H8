using System.ComponentModel.DataAnnotations;
using System;
using Npgsql.EntityFrameworkCore.PostgreSQL;
using Npgsql.EntityFrameworkCore.PostgreSQL.Design;

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