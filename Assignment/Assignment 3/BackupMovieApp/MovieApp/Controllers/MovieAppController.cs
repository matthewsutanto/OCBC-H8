using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MySql.Data;

namespace MovieApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MovieAppController : ControllerBase
    {
        [Route("Testrun")]
        [HttpGet]

        public ActionResult TestRun()
        {
            return Ok("success");
        }
    }
}