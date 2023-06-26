import 'package:exercice/05-poo/classes/lessons.dart';
import 'package:exercice/05-poo/classes/student.dart';
import 'package:exercice/05-poo/classes/user.dart';

/*
Créez un objet de type Lesson nommé italian (name = "Italian"),
● Associez johnDoe à italian,
● Affichez l'objet johnDoe dans la console,
● Créez un nouvel objet de type Lesson nommé french (name =
"French") et ajoutez-le aux associations de l'objet johnDoe (sans
supprimer l'association précédente avec italian).
Développement mobile cross platforms avec Flutter
Alexandre Leroux (alex@sherpa.one) - 2023
10/17
● Affichez l'objet johnDoe dans la console.
● Supprimez l'objet italian des lessons de johnDoe.
● Affichez l'objet johnDoe dans la conso
*/
void exercice() {
  final User johndoe = User("John", "Doe", "john@doe.com");
  johndoe.password = "123456";
  print(johndoe);
  johndoe.sayHello();
  print("test good password");
  print(johndoe.authenticate(password: "123456") ? "OK" : "KO");
  print("test bad password");
  print(johndoe.authenticate(password: "1234567") ? "OK" : "KO");

  print("partie student et lesson");
  Student johndoe2 = Student("John", "Doe");
  final Lesson italian = Lesson("Italian");
  johndoe2.lessons.add(italian);
  print(johndoe2);
  final Lesson french = Lesson("French");
  johndoe2.lessons.add(french);
  print(johndoe2);
  johndoe2.lessons.remove(italian);
  print(johndoe2);
}
