using System;

public class Logika1
{
    public static void Main(string [] args) 
    {
        Console.WriteLine("Input nilai A");
        int a = int.Parse(Console.ReadLine());
        Console.WriteLine("Input nilai B");
        int b = int.Parse(Console.ReadLine());
        
        if(a == b) {
            Console.WriteLine("A sama dengan B!");
        }else if(a>b) {
            Console.WriteLine("A lebih besar dari B!");
        }else if(a<b) {
            Console.WriteLine("A lebih kecil dari B!");
        }
    }
}