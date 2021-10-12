using System;

namespace Sesi_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            String fname, lname, alamat, tanggalLahir;
            int umur;

            Console.Write("enter your first name : ");
            fname = Console.ReadLine();

            Console.Write("enter your lasts name : ");
            lname = Console.ReadLine();

            Console.Write("enter your age : ");
            umur = int.Parse(Console.ReadLine());

            Console.Write("enter your address : ");
            alamat = Console.ReadLine();

            Console.Write("enter your birthdate : ");
            tanggalLahir = Console.ReadLine();

            Console.WriteLine("your full name is "+fname+" "+lname);
            Console.WriteLine("your age is "+umur);
            Console.WriteLine("your address is "+alamat);
            Console.WriteLine("your birthdate is "+tanggalLahir);
        }
    }
}
