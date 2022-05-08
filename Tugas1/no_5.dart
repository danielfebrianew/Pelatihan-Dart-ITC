import 'dart:io';

void main(List<String> args) {
  stdout.write("Masukkan angka : ");
  String? input = stdin.readLineSync();
  if (input != null) {
    if (int.tryParse(input) != null) {
      int jumlah = int.parse(input);

      for (int i = 1; i <= jumlah; i++) {
        if ((i % 2 == 0) && (i % 3 == 0)) {
          print("$i - Skip");
        } else if ((i % 2) == 0) {
          print("$i - Genap");
        } else if ((i % 2) == 1) {
          print("$i - Ganjil");
        }
      }

    } else {
      print("Mohon masukkan integer!");
    }
  }
  
}