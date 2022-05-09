import 'dart:async';

void main(List<String> args) async {
  print("Menyanyi, mulai!");
  await Line1();
  await Line2();
  await Line3();
}

Future<void> Line1() {
  return Future.delayed(Duration(seconds: 1), (() => print("Pelangi-pelangi alangkah indahmu")));
}

Future<void> Line2() {
  return Future.delayed(Duration(seconds: 2), (() => print("Merah kuning hijau")));
}

Future<void> Line3() {
  return Future.delayed(Duration(seconds: 1), (() => print("Di langit yang biru")));
}