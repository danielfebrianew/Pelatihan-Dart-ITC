import 'dart:io';

void main(List<String> args) {
  stdout.write("Masukkan nama : ");
  String? nama = stdin.readLineSync();
  stdout.write("Masukkan hobi : ");
  String? hobi = stdin.readLineSync();

  tampilkan(nama, hobi);
}

void tampilkan(nama, hobi) {
  print(" ");
  print("Nama saya : $nama");
  print("Hobi saya : $hobi");
}