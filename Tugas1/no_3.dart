import 'dart:io';

void main(List<String> args) {
  print("Masukkan nama depan : ");
  String? namaDepan = stdin.readLineSync();
  print("Masukkan nama belakang : ");
  String? namaBelakang = stdin.readLineSync();

  print("\nNama Depan : " + namaDepan.toString());
  print("Nama Belakang : " + namaBelakang.toString());
}