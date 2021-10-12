using System;

public class Latihan
{
    public static void Main(string[] args)
    {   
        Console.Write("Enter your age : ");
        int age = int.Parse(Console.ReadLine());

        Console.WriteLine("Enter your username");
        string username = Console.ReadLine();
        
        Console.Write("Password : ");
        string password = Console.ReadLine();
        
        string jenkel="";

        bool cekJenKel = false;
        while(!cekJenKel){
            Console.Write("Jenis Kelamin(L/P) : ");
            jenkel = Console.ReadLine();

            if(jenkel=="L"){
                jenkel="Laki-Laki";
                cekJenKel = true;
            }else if(jenkel=="P"){
                jenkel="Perempuan";
                cekJenKel = true;
            }else {
                Console.WriteLine("Input salah");
            }
        }

        string nikah="";
        bool menikah = false;
        bool cekNikah = false;
        while(!cekNikah) {
            Console.Write("Status Nikah(Y/N) : ");
            nikah = Console.ReadLine();
            if(nikah=="Y"){
                menikah=true;
                cekNikah=true;
            }else if (nikah=="N"){
                menikah=false;
                cekNikah=true;
            }
            else {
                Console.WriteLine("Inputnya salah!");
            }
        }
        

        int pertama, kedua, ketiga, total;
        double rata;

        Console.WriteLine("===Menghitung Nilai===");
        Console.Write("Masukkan nilai pertama : ");
        pertama = int.Parse(Console.ReadLine());
        Console.Write("Masukkan nilai kedua : ");
        kedua = int.Parse(Console.ReadLine());
        Console.Write("Masukkan nilai ketiga : ");
        ketiga = int.Parse(Console.ReadLine());

        total = pertama+kedua+ketiga;
        rata = total/3;

        bool isUser = username == "Matthew";
        bool isAdult = age>18;
        bool isPasswordValid = password == "OCBC";

        
        if(isUser && isAdult && isPasswordValid)
        {
            Console.WriteLine("===WELCOME TO THE OCBC!===");
            Console.WriteLine("===BIODATA===");
            Console.WriteLine("Umur : "+age);
            Console.WriteLine("Username : "+username);
            Console.WriteLine("Jenis Kelamin : "+jenkel);
            Console.WriteLine("Status Nikah : "+menikah);
            Console.WriteLine("===ARITMATIKA===");
            Console.WriteLine("Total Nilai Adalah : "+ total);
            Console.WriteLine("Rata-Rata Nilai Adalah : "+ rata);
        }
        else
        {
            Console.WriteLine("Sorry try again!");
        }
    }
}