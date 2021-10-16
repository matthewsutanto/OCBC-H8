using System.Security.Cryptography;
using System.Reflection.Emit;
using System.Collections;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MySql.Data;
using System;
using System.Collections.Generic;
using MovieApp.Data;
using MovieApp.Models;

namespace MovieApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MovieAppController : ControllerBase
    {
        private MovieContext _context;

        [Route("Testrun")]
        [HttpGet]

        public ActionResult TestRun()
        {
            return Ok("success");
        }

        public MovieAppController(MovieContext context)
        {
            this._context = context;
        }

        public ActionResult<IEnumerable<MovieData>> GetMovieItems()
        {
            _context = HttpContext.RequestServices.GetService(typeof(MovieContext)) as MovieContext;
            return _context.GetAllMovie();
        }

        [HttpGet("{id}", Name = "Get")]
        public ActionResult<IEnumerable<MovieData>> GetMovieItem(string id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(MovieContext)) as MovieContext;
            return _context.GetMovie(id);
        }

        [HttpPost]
        public ActionResult<IEnumerable<MovieData>> InsertMovie(MovieData data)
        {
            _context = HttpContext.RequestServices.GetService(typeof(MovieContext)) as MovieContext;
            return _context.CreateMovie(data);
        }

        [HttpPut("{id}", Name = "PUT")]
        public ActionResult<IEnumerable<MovieData>> UpdateMovie(string id, MovieData data)
        {
            _context = HttpContext.RequestServices.GetService(typeof(MovieContext)) as MovieContext;
            return _context.UpdateMovie(id,data);
        }

        [HttpDelete("{id}", Name = "DELETE")]
        public ActionResult<IEnumerable<MovieData>> DeleteMovie(string id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(MovieContext)) as MovieContext;
            return _context.DeleteMovie(id);
        }
    }
}