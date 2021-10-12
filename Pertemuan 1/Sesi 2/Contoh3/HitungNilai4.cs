using System;

public class HitungNilai4
{
    public static void Main(string[] args)
    {
        Console.Write("Enter your age : ");
        int age = int.Parse(Console.ReadLine());
        Console.Write("Password : ");
        string password = Console.ReadLine();

        bool isAdult = age>18;
        bool isPasswordValid = password == "OCBC";

        if(isAdult && isPasswordValid)
        {
            Console.WriteLine("WELCOME TO THE OCBC!");
        }
        else
        {
            Console.WriteLine("Sorry try again!");
        }

        string angka1 = "1";
        string angka2 = "2";

        Console.WriteLine(angka1+angka2);
    }
}