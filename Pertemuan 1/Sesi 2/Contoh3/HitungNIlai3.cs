using System;

public class HitungNilai3
{
    public static void Main(string[] args)
    {
        int nilai1, nilai2 =0;

        Console.Write("Jumlah Nilai1 : ");
        nilai1 = int.Parse(Console.ReadLine());

        Console.Write("Jumlah Nilai2 : ");
        nilai2 = int.Parse(Console.ReadLine());

        Console.WriteLine("Hasil Perbandingan");
        Console.WriteLine($"nilai1>nilai2 : {nilai1>nilai2}");
        Console.WriteLine($"nilai1>=nilai2 : {nilai1>=nilai2}");
        Console.WriteLine($"nilai1<nilai2 : {nilai1<nilai2}");
        Console.WriteLine($"nilai1<=nilai2 : {nilai1<=nilai2}");
        Console.WriteLine($"nilai1==nilai2 : {nilai1==nilai2}");
        Console.WriteLine($"nilai1!=nilai2 : {nilai1!=nilai2}");
    }
}