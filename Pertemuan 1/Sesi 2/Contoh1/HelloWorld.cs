using System;

namespace Contoh1
{
    public class HelloWorld
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Console.WriteLine("Hello nama kalian");
            Console.WriteLine("Selamat Datang di Program Bootcamp OCBC");
            Console.WriteLine("Tahap 1 saya akan belajar C# ");
        
            string namaCust = "Andi";
            int jumlah1=10,jumlah2=7,jumlah3=13;
            double  harga1=10.000, harga2=5.000, harga3=20.000;
            
            double total1 = jumlah1 * harga1;
            double total2 = jumlah2 * harga2;
            double total3 = jumlah3 * harga3;

            double totalHargaBarang = total1+total2+total3;

            int totalJumlahBarang = jumlah1+jumlah2+jumlah3;

            Console.WriteLine();
            Console.WriteLine("nama customer : "+namaCust);
            Console.WriteLine("barang 1 ber jumlah : "+jumlah1+" dengan harga "+harga1+" yang harus dibayar : "+total1);
            Console.WriteLine("barang 2 ber jumlah : "+jumlah2+" dengan harga "+harga2+" yang harus dibayar : "+total2);
            Console.WriteLine("barang 3 ber jumlah : "+jumlah3+" dengan harga "+harga3+" yang harus dibayar : "+total3);
            Console.WriteLine();
            Console.WriteLine("jumlah semua barang : "+totalJumlahBarang);
            Console.WriteLine("total harga semua barang : "+totalHargaBarang);
            Console.WriteLine();
        }
    }
}
