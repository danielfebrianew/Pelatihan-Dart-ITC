import 'BangunDatar.dart';

class Persegi extends BangunDatar{
  // -- DEKLARASI
  double? _panjang;
  double? _lebar;

  // -- SETTER
  void setPanjangLebar(double? panjang, double? lebar) {
    _panjang = panjang;
    _lebar = lebar;
  }

  // -- GETTER
  double get getPanjang => _panjang!;
  double get getLebar => _lebar!;

  // -- METHOD HITUNG KELILING
  double? hitungKeliling() {
    return (2 * (_panjang! + _lebar!));
  }

  // -- METHOD HITUNG LUAS
  double? hitungLuas() {
    return _panjang! * _lebar!;
  }
}