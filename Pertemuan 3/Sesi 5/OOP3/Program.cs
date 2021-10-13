using System;

namespace OOP3
{
    class overide:Program2
    {

        public override void penjumlahanPerkalian()
        {
            Console.WriteLine("Overiding 2....------>>>>>>>");
            Console.WriteLine("Hasil Pembagian angka {0} dan angka {1} = {2}",bilangan1,bilangan2,bilangan1/bilangan2);
            Console.WriteLine("Hasil Pengurangan angka {0} dan angka {1} = {2}",bilangan1,bilangan2,bilangan1-bilangan2);
        }
        static void Main(string[] args)
        {
            bool cek = false;
            
            while(!cek) {
                Console.WriteLine("Menu yang ingin dipilih : ");
                Console.WriteLine("1. PesawatTempur");
                Console.WriteLine("2. Overloading");
                Console.WriteLine("3. Overridding");
                Console.WriteLine("4. About me");
                int pilih = int.Parse(Console.ReadLine());

                switch(pilih)
                {
                    case 1:{
                        Pesawat pesawat = new Pesawat();
                        PesawatTempur pesawatT = new PesawatTempur();

                        Console.WriteLine("Nama pesawat");
                        pesawat.nama = Console.ReadLine();
                        Console.WriteLine("Jumlah roda pesawat");
                        pesawat.jumlahRoda = Console.ReadLine();
                        Console.WriteLine("Ketinggian Sekarang");
                        pesawat.Ketinggian = Console.ReadLine();
                        Console.WriteLine("Jumlah penumpang");
                        pesawat.jumlahPenumpang = Console.ReadLine();

                        Console.WriteLine("Nama pesawat tempur");
                        pesawatT.nama = Console.ReadLine();
                        Console.WriteLine("Jumlah roda pesawat tempur");
                        pesawatT.jumlahRoda = Console.ReadLine();
                        Console.WriteLine("Ketinggian pesawat tempur Sekarang ");
                        pesawatT.Ketinggian = Console.ReadLine();
                        Console.WriteLine("Jumlah penumpang pesawat tempur");
                        pesawatT.jumlahPenumpang = Console.ReadLine();

                        pesawat.terbang();

                        pesawatT.terbang();    
                        break;}
                    
                    case 2:{
                        Data data = new Data();
                        Console.WriteLine("Data String : ");
                        data.print(Console.ReadLine());
                        Console.WriteLine("Data Double");
                        data.print(Convert.ToDouble(Console.ReadLine()));

                        break;}
                    
                    case 3:{
                        Program2 overiding = new Program2();
                        Console.WriteLine("Bilangan 1 : ");
                        int bilangan1 = int.Parse(Console.ReadLine());
                        Console.WriteLine("Bilangan 2 : ");
                        int bilangan2 = int.Parse(Console.ReadLine());

                        overiding.bilangan(bilangan1,bilangan2);
                        overiding.penjumlahanPerkalian();
                        overiding = new overide();
                        Console.WriteLine("Bilangan 1 : ");
                        bilangan1 = int.Parse(Console.ReadLine());
                        Console.WriteLine("Bilangan 2 : ");
                        bilangan2 = int.Parse(Console.ReadLine());
                        overiding.bilangan(bilangan1,bilangan2);
                        overiding.penjumlahanPerkalian();
                        break;}
                    
                    case 4:{
                        Console.WriteLine("Pengalaman belajar c# merupakan pengalaman yang menarik karena sebelumnya saya belum pernah mengenal C# sebelumnya.");
                        break;}
                }

                Console.WriteLine("Mau lanjut ? (Y/n)");
                string lanjut = Console.ReadLine();

                if(lanjut=="n")
                {
                    cek=true;
                }
            }
        }
    }
}
