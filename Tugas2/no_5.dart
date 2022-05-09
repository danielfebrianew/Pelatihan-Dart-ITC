import 'dart:async';

void main(List<String> args) {
  print("Nama");
  Future.delayed(Duration(seconds: 1), () => print("Saya"));
  Future.delayed(Duration(seconds: 2), () => print("Daniel"));
}
