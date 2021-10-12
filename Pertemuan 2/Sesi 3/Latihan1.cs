using System;

public class Logika7
{
    public static void Main(string [] args) 
    {
        Console.WriteLine("Batas Looping : ");
        int batas = int.Parse(Console.ReadLine());

        Console.WriteLine("Angka : ");  
        double angka = Convert.ToDouble(Console.ReadLine());

        Console.WriteLine("Operator (+-*/): ");
        string ops = Console.ReadLine();
        
        for (int i=1; i<=batas; i++)
        {
            double hasil = 0;
            switch(ops)
            {
                case "+":{
                    hasil=i+angka;
                    break;}
                case "-":{
                    hasil=i-angka;
                    break;}
                case "*":{
                    hasil=i*angka;
                    break;}
                case "/":{
                    hasil=i/angka;
                    break;}
            }

            Console.WriteLine("Iterasi ke-"+i+" = "+hasil);        
        }
        
    }
}