using System;

namespace OOP2
{
    class Program
    {
        static void Main(string[] args)
        {
            Pesawat pesawat = new Pesawat();
            Console.WriteLine("Nama pesawat");
            pesawat.nama = Console.ReadLine();
            Console.WriteLine("Ketinggian Sekarang");
            pesawat.ketinggian = Console.ReadLine();

            pesawat.terbang();
            pesawat.sudahTerbang();
        }
    }
}
