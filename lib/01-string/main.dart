void exercice1() {
  print("Hello, World !");
}

void exercice2() {
  String hello = "Hello, World !";
  print(hello);
}

void exercice3() {
  const String hello = "Hello";
  const String world = "World";
  print("$hello, $world !");
}

void exercice4() {
  const String hello = "Hello";
  const String world = "World";
  // ignore: prefer_interpolation_to_compose_strings
  print(hello + ", " + world + " !");
}

void exercice5() {
  const String message = "Hello, World !";
  print(message.substring(0, 5));
}

void exercice6() {
  const String message = "Hello, World !";
  print("il y a ${message.length} caractères dans la phrase \"$message\"");
}

void exercice7() {
  const String welcome = "Hello, World !";
  print(changeLetterToNumber(letter: welcome));
}

void exercice8() {
  const String welcome = "Hello World";
  final List<String> words = welcome.split(" ");
  print(words);
}

void exercice9() {
  // test 1
  const String pwd = "";
  print(pwd.isEmpty ? "Mot de passe manquant" : "Mot de passe fourni");

  // test 2
  const String pwd2 = "123456";
  print(pwd2.isEmpty ? "Mot de passe manquant" : "Mot de passe fourni");
}

void exercice10() {
  const String email = "john@doe.com";
  print(email.contains("@") && email.contains(".")
      ? "Email valide"
      : "Email invalide");

  // regex solution
  final RegExp emailRegex = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9.]+$");
  print(emailRegex.hasMatch(email) ? "Email valide" : "Email invalide");
}

String changeLetterToNumber({required String letter}) {
  switch (letter) {
    case "a":
    case "A":
      return "4";
    case "e":
    case "E":
      return "3";
    case "i":
    case "I":
      return "1";
    case "o":
    case "O":
      return "8";
    default:
      return letter;
  }
}
