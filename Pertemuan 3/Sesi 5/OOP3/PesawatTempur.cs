using System;

public class PesawatTempur:Pesawat
{
        public void terbangT()
        {
            Console.WriteLine("Pesawat tempur dengan nama {0}, yang mempunyai jumlah roda {1}, sedang berada pada ketinggian {2} dengan membawa jumlah penumpang sebanyak {3} akan meledakkan senjata", this.nama, this.jumlahRoda, this.Ketinggian, this.jumlahPenumpang);
        }

}