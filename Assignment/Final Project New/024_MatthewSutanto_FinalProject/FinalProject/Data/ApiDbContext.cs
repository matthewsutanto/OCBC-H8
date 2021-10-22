using Microsoft.EntityFrameworkCore;
using FinalProject.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace FinalProject.Data
{
    public class ApiDbContext : IdentityDbContext
    {
        public virtual DbSet<PaymentDetails> PaymentDetails { get; set; }
        public virtual DbSet<RefreshToken> RefreshTokens { get; set; }
        public ApiDbContext(DbContextOptions<ApiDbContext> options)
        : base(options)
        {
            
        }
    }
}