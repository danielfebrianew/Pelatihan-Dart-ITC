import 'dart:io';

void main(List<String> args) {
  bool ulangi = true;

  while (ulangi) {
    stdout.write("\nMasukkan tinggi segitiga siku-siku : ");
    String? input = stdin.readLineSync();

    if (input != null) {
      if (int.tryParse(input) != null) {
        int jumlah = int.parse(input);

        for(int i = 0; i < jumlah; i++) {
          for(int j = 0; j < i+1; j++) {
            stdout.write("*");
          }
          print(" ");
        }

        ulangi = false;
      } else {
        print("Mohon masukkan nilai integer!");
      }
    }
  }

  

}