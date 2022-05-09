import 'dart:io';

void main(List<String> args) {
  bool ulangi = true;

  while (ulangi) {
    stdout.write("Masukkan angka pertama : ");
    String? pertama = stdin.readLineSync();
    stdout.write("Masukkan angka kedua : ");
    String? kedua = stdin.readLineSync();

    if ((pertama != null) && (kedua != null)) {
      if ((int.tryParse(pertama) != null) && (int.tryParse(kedua) != null)) {
        int intPertama = int.parse(pertama);
        int intKedua = int.parse(kedua);
        ulangi = false;
        range(intPertama, intKedua);
      } else {
        print("Mohon masukkan int yang valid!");
      }
    } else {
      print("Mohon masukkan nilai!");
    }
  }
}
  

void range(nilaiAwal, nilaiAkhir) {
  for(int i = nilaiAwal; i <= nilaiAkhir; i++) {
    print(i);
  }
}