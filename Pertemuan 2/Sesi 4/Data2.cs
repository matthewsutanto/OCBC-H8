using System;

public class Data2
{
    public static void Main(string[] args)
    {   
        Console.Write("Jumlah data yang mau diinput : ");
        int jumlah = int.Parse(Console.ReadLine());
        string[] contoh = new string[jumlah];
        
        int i=0;
        int ke=0;
        for(i=0;i<jumlah;i++) {
            ke = i+1;
            Console.Write("Data ke-"+ke+"=");
            contoh[i]=Console.ReadLine();
        }

        Console.WriteLine("Menampilkan semua data dalam array");
        Console.WriteLine("");

        foreach (string item in contoh)
        {
            Console.WriteLine("Item : "+item);
        }
    }
}