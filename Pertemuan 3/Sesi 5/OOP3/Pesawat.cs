using System;

public class Pesawat 
{
        public string nama;
        private string ketinggian;
        
        public string Ketinggian
        {
            get { return ketinggian; }
            set { ketinggian= value; }
        }

        public string jumlahRoda;
        public string jumlahPenumpang;
        

        public void terbang()
        {
            Console.WriteLine("Pesawat dengan nama {0}, sedang take off", this.nama);
        }

        public void sudahTerbang()
        {
            Console.WriteLine("Pesawat sekarang berada pada ketinggian {0}", this.nama);
        }
}