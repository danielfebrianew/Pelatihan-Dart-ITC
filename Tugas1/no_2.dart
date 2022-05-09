void main(List<String> args) {
  var kalimat = "Belajar Flutter";
  var contoh = kalimat[2] + kalimat[3];

  var kata1 = kalimat[0] + kalimat[1] + kalimat[2] + kalimat[3] + kalimat[4] + kalimat[5] + kalimat[6] + kalimat[7];
  var kata2 = kalimat.substring(8, 15);

  print("Contoh : " + contoh);
  print("Kata 1: " + kata1);
  print("Kata 2: " + kata2);
}