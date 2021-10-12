using System;

public class Logika2
{
    public static void Main(string [] args) 
    {
        bool cek = false;

        while(!cek) {
            Console.Write("Input nilai : ");
            int nilai = int.Parse(Console.ReadLine());
            
            if(nilai < 60) {
                Console.WriteLine("Nilai yang didapat C!");
            }else if(nilai < 80) {
                Console.WriteLine("Nilai yang didapat B!");
            }else {
                Console.WriteLine("Nilai yang didapat A!");
            }

            Console.WriteLine("Mau dilanjutkan(y/n) ?");
            string kata = Console.ReadLine();

            if(kata == "n"){
                cek=true;
            }
        }
    }
}