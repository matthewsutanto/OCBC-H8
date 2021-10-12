using System;

public class Assignmen1 
{
    public static void Main(string[] args)
    {   
        Console.WriteLine("Nama Lengkap Saya : Matthew Sutanto");
        Console.WriteLine("Nomor Peserta : FSDO001ONL024");
        Console.WriteLine("Nomor Peserta : Taman Cibaduyut Indah (Bandung)");
        bool cek = false;
        while(!cek) {
            Console.WriteLine("=== SELAMAT DATANG DI ASSIGNMENT 1 ===");
            Console.WriteLine("=== Pilih Menu Soal ===");
            Console.WriteLine("1. Soal Nomor 1 (Segitiga ABC)");
            Console.WriteLine("2. Soal Nomor 2 (Segitiga angka)");
            Console.WriteLine("3. Soal Nomor 3 (Faktorial");
            Console.WriteLine("4. Soal Nomor 4 (Balik Angka)");
            Console.WriteLine("5. Soal Nomor 5 (Convert Angka ke string)");
            Console.WriteLine("6. Soal Nomor 6 (Palindrom)");
            Console.WriteLine("7. About Me");
            Console.WriteLine("8. Exit program");
            int pilih = int.Parse(Console.ReadLine());
            int i=0, j=0;
            switch (pilih)
            {
                case 1:{
                    Console.WriteLine("Anda Memilih Soal Nomor 1.");
                    Console.Write("Enter Range: ");
                    int range = int.Parse(Console.ReadLine());
                    char alpha = 'A';
                    for(i=1; i<=range; i++) {
                        
                        for(j=range; j>i; j--) {
                            Console.Write(" ");
                        }
                        
                        for(j=1; j<i+1; j++) {
                            Console.Write(alpha++);
                        }
                        alpha--;
                        for(j=i-1; j>0; j--) {
                            Console.Write(--alpha);
                        }
                        alpha = 'A';
                        Console.WriteLine(" ");
                    }
                    break;}

                case 2:{
                    Console.WriteLine("Anda Memilih Soal Nomor 2.");
                    Console.Write("Enter Range: ");
                    int range = int.Parse(Console.ReadLine());
                    for(i=1; i<=range; i++) {
                        
                        for(j=range; j>i; j--) {
                            Console.Write(" ");
                        }
                        
                        for(j=1; j<i+1; j++) {
                            Console.Write(j);
                        }

                        for(j=i-1; j>0; j--) {
                            Console.Write(j);
                        }
                        Console.WriteLine(" ");
                    }
                    break;}

                case 3:{
                    Console.WriteLine("Anda Memilih Soal Nomor 3.");
                    Console.Write("Enter Value: ");
                    int value = int.Parse(Console.ReadLine());
                    int hasil = 1;
                    for(i=1; i<=value; i++) {
                        hasil*=i;
                    }
                    Console.WriteLine("Hasil Faktorial = "+hasil);
                    break;}

                case 4:{
                    Console.WriteLine("Anda Memilih Soal Nomor 4.");
                    Console.Write("Enter string : ");
                    string kata = Console.ReadLine();
                    i=0;
                    j=kata.Length-1;
                    char [] temp= new char[kata.Length];
                    while(i<=j) {
                        temp[i]=kata[j];
                        temp[j]=kata[i];
                        i++;
                        j--;
                    }
                    string newKata = new string(temp);

                    Console.WriteLine("Inverse String = "+newKata);
                    break;}

                case 5:{
                    Console.WriteLine("Anda Memilih Soal Nomor 5.");
                    Console.Write("Enter number: ");
                    string angka2 = Console.ReadLine();
                    int parsed;
                    while (!int.TryParse(angka2, out parsed))
                    {
                        Console.WriteLine("Please enter a number!");
                        Console.Write("Enter number: ");
                        angka2 = Console.ReadLine();
                    }
                    char temp;
                    for(i=0; i<angka2.Length; i++) {
                        temp = angka2[i];
                        switch(temp)
                        {
                            case '1':{
                                Console.Write("One ");
                                break;}
                            case '2':{
                                Console.Write("Two ");
                                break;}
                            case '3':{
                                Console.Write("Three ");
                                break;}
                            case '4':{
                                Console.Write("Four ");
                                break;}
                            case '5':{
                                Console.Write("Five ");
                                break;}
                            case '6':{
                                Console.Write("Six ");
                                break;}
                            case '7':{
                                Console.Write("Seven ");
                                break;}
                            case '8':{
                                Console.Write("Eight ");
                                break;}
                            case '9':{
                                Console.Write("Nine ");
                                break;}
                            case '0':{
                                Console.Write("Zero ");
                                break;}
                        }
                    }

                    Console.WriteLine("");
                    break;}

                case 6:{
                    Console.WriteLine("Anda Memilih Soal Nomor 6.");
                    Console.Write("Enter string : ");
                    string kata = Console.ReadLine();
                    i=0;
                    j=kata.Length-1;
                    bool cekKata = true;
                    while(i<=j && cekKata) 
                    {
                        if (kata[i]!=kata[j]) 
                        {
                            cekKata=false;
                        }
                        i++;
                        j--;
                    }

                    if (cekKata) 
                    {
                        Console.WriteLine("Kata ini Palindrom");
                    } else
                    {
                        Console.WriteLine("Kata ini bukan Palindrom");  
                    }
                    break;}

                case 7:{
                    Console.WriteLine("Nama Lengkap Saya : Matthew Sutanto");
                    Console.WriteLine("Nomor Peserta : FSDO001ONL024");
                    Console.WriteLine("Nomor Peserta : Taman Cibaduyut Indah (Bandung)");
                    break;}

                case 8:{
                    System.Environment.Exit(0);
                    break;}
            }

            bool cekLanjut = false;
            while(!cekLanjut) 
            {
                Console.WriteLine("Mau Lanjut ?(Y/n) :");
                string lanjut = Console.ReadLine();

                if(lanjut=="n" || lanjut=="Y")
                {
                    cekLanjut =  true;
                }else 
                {
                    Console.WriteLine("Input yang dimasukkan salah, coba lagi");
                }

                if(lanjut=="n") 
                {
                    cek = true;
                }
            }
        }
    }
}