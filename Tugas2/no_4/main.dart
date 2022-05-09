import 'dart:io';
import 'Persegi.dart';
import 'Lingkaran.dart';

void main(List<String> args) {
  bool loop = true;

  while (loop) {
    // -- MENU
    print("Menu\n");

    print("1. Persegi");
    print("2. Lingkaran\n");

    stdout.write("Masukkan pilihan : ");
    String? input = stdin.readLineSync();

    // -- INPUT PILIHAN MENU
    if (input != null) {
      if (int.tryParse(input) != 0) {
        int inputInt = int.parse(input); // -- PARSE INPUT DARI STRING MENJADI INT
        loop = false;

        switch (inputInt) { // -- SWITCH INPUT MENU
          case 1 :
            Persegi persegi = new Persegi(); // -- INSTANSIASI OBJECT PERSEGI

            // -- INPUT PANJANG DAN LEBAR PERSEGI
            stdout.write("Panjang : ");
            String? stringPanjang = stdin.readLineSync();
            stdout.write("Lebar : ");
            String? stringLebar = stdin.readLineSync();

            if ((stringLebar != null) && (stringPanjang != null)) { // -- MENGECEK APAKAH INPUT KOSONG
            // -- PARSE DARI STRING KE DOUBLE
              double panjang = double.parse(stringPanjang);
              double lebar = double.parse(stringLebar);

            // -- SET NILAI PANJANG & LEBAR
              persegi.setPanjangLebar(panjang, lebar);

            // -- EKSEKUSI METHOD HITUNG KELILING DAN HITUNG LUAS PERSEGI
              double? keliling = persegi.hitungKeliling();
              double? luas = persegi.hitungLuas();

            // -- MENAMPILKAN HASIL KELILING DAN LUAS PERSEGI
              print("Keliling Persegi : $keliling");
              print(" ");
              print("Luas Persegi : $luas");
            }

            break;
          case 2 :
            Lingkaran lingkaran = new Lingkaran(); // -- INSTANSIASI OBJECT LINGKARAN

            // -- INPUT JARI-JARI LINGKARAN
            stdout.write("Jari-jari : ");
            String? stringR = stdin.readLineSync();

            if (stringR != null) { // -- MENGECEK APAKAH INPUT KOSONG
            // -- PARSE DARI STRING KE DOUBLE
              double radius = double.parse(stringR);

            // -- SET NILAI JARI-JARI LINGKARAN
              lingkaran.setJariJari(radius);

            // -- EKSEKUSI METHOD HITUNG KELILING DAN HITUNG LUAS LINGKARAN
              double? keliling = lingkaran.hitungKeliling();
              double? luas = lingkaran.hitungLuas();

            // -- MENAMPILKAN HASIL KELILING DAN LUAS LINGKARAN
              print("Keliling Lingkaran : $keliling");
              print(" ");
              print("Luas Lingkaran : $luas");
            }

            break;
          default: 
            print("Masukkan input yang valid!");
            break;
        }

      } else {
        print("Masukkan input yang valid!");
      }
    }

  }
}