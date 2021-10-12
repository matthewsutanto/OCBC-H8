using System;
using System.Globalization;

public class String2
{
    public static void Main(string[] args)
    {   
        string[] str = {"Ini", "adalah", "sebuah", "test."};
        Console.WriteLine("Array asli: ");

        for(int i=0; i<str.Length; i++) {
            Console.Write(str[i] + " ");
        }

        Console.Write("\n");

        str[1] = "merupakan";
        str[3] = "test, juga!";

        Console.WriteLine("Array termodifikasi: ");

        for(int i=0; i<str.Length; i++) {
            Console.Write(str[i] + " ");
        }
    }
}