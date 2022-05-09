import 'dart:io';

void main(List<String> args) {
  stdout.write("Masukkan radius lingkaran : ");
  String? radiusString = stdin.readLineSync(); // input

  if (radiusString != null) { // mengecheck apakah input null
    if (double.tryParse(radiusString) != null) { // error handling apabila yang diinput bukan double
      double? radiusDouble = double.parse(radiusString);
      Lingkaran lingkaran = new Lingkaran(); // instansiasi object lingkaran
      lingkaran.setRadius(radiusDouble);
      double? hasil = lingkaran.hitungLuasLingkaran();
      stdout.write("\n" + "Luas lingkaran : $hasil"); // print hasil
    } else {
      print("\nMohon masukkan input berupa Double!");  
    }
  } else {
    print("\nMohon masukkan input!");
  }

}

class Lingkaran {
  // deklarasi
  double phi = 3.14;
  double? _radius;

  // setter
  void setRadius(double? radius) {
    _radius = radius;
  }

  // getter 
  double getRadius() {
    return _radius!;
  }

  // method hitung luas lingkaran
  double hitungLuasLingkaran() {
    return phi * _radius! * _radius!;
  }
}