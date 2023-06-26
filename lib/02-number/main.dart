void exercice1() {
  const int price1 = 10;
  const double price2 = 10.5;
  print("price1 = $price1");
  print("price2 = $price2");
}

void exercice2() {
  const int price1 = 10;
  const double price2 = 10.5;
  final double sum = price1 + price2;
  print("sum = $sum");
}

void exercice3() {
  const int price1 = 10;
  const double price2 = 10.5;
  final double sum = price1 + price2;
  print("sum est de type ${sum.runtimeType}");
}

void exercice4() {
  const int price1 = 10;
  const double price2 = 10.5;
  final double sum = price1 + price2;
  print("sum = ${sum.toInt()}");
}

void exercice5() {
  const String strSeven = "7";
  final int numSeven = int.parse(strSeven);
  print("numSeven = $numSeven");
}
