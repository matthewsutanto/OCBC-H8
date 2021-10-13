using System;

namespace OOP3
{
    class Program2
    {
        public int bilangan1,bilangan2;

        public void bilangan(int angka1, int angka2)
        {
            bilangan1 = angka1;
            bilangan2 = angka2;
        }

        public virtual void penjumlahanPerkalian()
        {
            Console.WriteLine("Overidding.......--------->>>>>>>>>");
            Console.WriteLine("Hasil Penjumlahan angka {0} dan angka {1} = {2}",bilangan1,bilangan2,bilangan1+bilangan2);
            Console.WriteLine("Hasil Perkalian angka {0} dan angka {1} = {2}",bilangan1,bilangan2,bilangan1*bilangan2);
        }
    }
}
