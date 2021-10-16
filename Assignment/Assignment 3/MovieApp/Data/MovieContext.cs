using System.Data;
using System.ComponentModel;
using System;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MovieApp.Models;

namespace MovieApp.Data
{
    public class MovieContext
    {
        public string ConnectionString { get; set; }

        public MovieContext(string ConnectionString)
        {
            this.ConnectionString = ConnectionString;
        }

        private MySqlConnection GetConnection ()
        {
            return new MySqlConnection(ConnectionString);
        }

        public List<MovieData> GetAllMovie()
        {
            List<MovieData> list = new List<MovieData>();

            using(MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT * FROM movie", conn);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    while(reader.Read())
                    {
                        list.Add(new MovieData(){
                            Id = reader.GetInt32("id"),
                            Name = reader.GetString("name"),
                            Genre = reader.GetString("genre"),
                            Duration = reader.GetString("duration"),
                            ReleaseDate = reader.GetDateTime("releaseDate")
                        });
                        
                    }
                }
            }
            return list;
        }

        public List<MovieData> GetMovie(string id)
        {
            List<MovieData> list = new List<MovieData>();

            using (MySqlConnection conn = GetConnection())
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT * FROM movie WHERE id = @id", conn);
                cmd.Parameters.AddWithValue("@id", id);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    while(reader.Read())
                    {
                        list.Add(new MovieData()
                        {
                            Id = reader.GetInt32("id"),
                            Name = reader.GetString("name"),
                            Genre = reader.GetString("genre"),
                            Duration = reader.GetString("duration"),
                            ReleaseDate = reader.GetDateTime("releaseDate")
                        });
                    }
                }
                return list;
            }
        }

        public JsonResult CreateMovie(MovieData movie)
        {
            string sql = "INSERT INTO movie(name,genre,duration,releaseDate) VALUES(@name,@genre,@duration,@releaseDate)";


            using (MySqlConnection conn = GetConnection())
            {
                DataTable table = new DataTable();
                MySqlDataReader mySqlDataReader;
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@name", movie.Name);
                cmd.Parameters.AddWithValue("@genre",movie.Genre);
                cmd.Parameters.AddWithValue("@duration", movie.Duration);
                cmd.Parameters.AddWithValue("@releaseDate", movie.ReleaseDate);

                mySqlDataReader = cmd.ExecuteReader();
                table.Load(mySqlDataReader);

                mySqlDataReader.Close();
                conn.Close();
            }

            return new JsonResult("Success");
        }

        public JsonResult UpdateMovie(string id, MovieData movie)
        {
            string sql = "update movie set name=@name,genre=@genre,duration=@duration,releaseDate=@releaseDate where id=@id";


            using (MySqlConnection conn = GetConnection())
            {
                DataTable table = new DataTable();
                MySqlDataReader mySqlDataReader;
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@name", movie.Name);
                cmd.Parameters.AddWithValue("@genre",movie.Genre);
                cmd.Parameters.AddWithValue("@duration", movie.Duration);
                cmd.Parameters.AddWithValue("@releaseDate", movie.ReleaseDate);
                cmd.Parameters.AddWithValue("@id", id);

                mySqlDataReader = cmd.ExecuteReader();
                table.Load(mySqlDataReader);

                mySqlDataReader.Close();
                conn.Close();
            }

            return new JsonResult("Success");
        }

        public JsonResult DeleteMovie(string id)
        {
            string sql = "delete from movie where id=@id";


            using (MySqlConnection conn = GetConnection())
            {
                DataTable table = new DataTable();
                MySqlDataReader mySqlDataReader;
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@id", id);

                mySqlDataReader = cmd.ExecuteReader();
                table.Load(mySqlDataReader);

                mySqlDataReader.Close();
                conn.Close();
            }

            return new JsonResult("Success");
        }
    }
}