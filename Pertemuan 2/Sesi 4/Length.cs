using System;

public class Length
{
    public static void Main(string[] args)
    {   
        int[] angka = new int[10];
        Console.WriteLine("Panjang array angka adalah "+angka.Length);

        for(int i=0; i<angka.Length;i++) {
            angka[i] = i*1;
        }

        for(int i=0; i<3;i++) {
            jagged[1][i] = i;
        }

        for(int i=0; i<5;i++) {
            jagged[2][i] = i;
        }

        for(int i=0; i<4;i++) {
            Console.Write(jagged[0][i]+" ");
        }
        Console.WriteLine();

        for(int i=0; i<3;i++) {
            Console.Write(jagged[1][i]+" ");
        }
        Console.WriteLine();
        
        for(int i=0; i<5;i++) {
            Console.Write(jagged[2][i]+" ");
        }
        Console.WriteLine();
        
    }
}