using System;
using System.Globalization;

public class String4
{
    public static void Main(string[] args)
    {   
        string stringawal = "C# membuat string mudah.";

        string substr = stringawal.Substring(5,12);

        Console.WriteLine("string awal: "+stringawal);
        Console.WriteLine("Substring : "+substr);
    }
}