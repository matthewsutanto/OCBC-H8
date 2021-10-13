using System;

namespace OOP1
{
    class Program
    {
        static void Main(string[] args)
        {
            Laptop laptop1 = new Laptop();
            
            Console.WriteLine("Merk Laptop : ");
            laptop1.merk=Console.ReadLine();

            Console.WriteLine("Ram Laptop : ");
            laptop1.ram = int.Parse(Console.ReadLine());

            Console.WriteLine("Memory Laptop : ");
            laptop1.memory = int.Parse(Console.ReadLine());

            Console.WriteLine("Merk Laptop adalah : "+ laptop1.merk);
            Console.WriteLine("Kapasitas Ram Laptop adalah : "+ laptop1.ram);
            Console.WriteLine("Memory Laptop adalah : "+ laptop1.memory);

            laptop1.Chatting();
            laptop1.Sosmed();
            laptop1.OnlineShop();
        }
    }
}
