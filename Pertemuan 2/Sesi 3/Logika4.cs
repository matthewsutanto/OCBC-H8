using System;

public class Logika4
{
    public static void Main(string [] args) 
    {
        double nilai;

        Console.Write("Nilai : ");
        nilai = Convert.ToDouble(Console.ReadLine());

        if(nilai>=85) {
            Console.WriteLine("Anda mendapat grade A!");
        }else if(nilai>=65) {
            Console.WriteLine("Anda mendapat grade B!");
        }else if(nilai>=45) {
            Console.WriteLine("Anda mendapat nilai C!");
        }else if(nilai>=25) {
            Console.WriteLine("Anda mendapat nilai D!");
        }
    }
}