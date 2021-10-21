using System.ComponentModel.DataAnnotations;

namespace FinalProject.Models.DTOs.Requests
{
    public class UserLoginRequests
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
    }
}