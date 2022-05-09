import 'BangunDatar.dart';

class Lingkaran extends BangunDatar{
  // -- DEKLARASI
  double phi = 3.14;
  double? _r; 

  // -- SETTER
  void setJariJari(double r) {
    _r = r;
  }

  get getJariJari => _r!;

  // -- METHOD HITUNG KELILING
  double? hitungKeliling() {
    return 2 * phi * _r!;
  }

  // -- METHOD HITUNG LUAS
  double? hitungLuas() {
    return phi * _r! * _r!;
  }
}