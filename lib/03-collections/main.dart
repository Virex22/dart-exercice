import 'package:exercice/03-collections/planet.dart';
import 'package:exercice/03-collections/solar_system_element.dart';

List<String> getPlanets() {
  return [
    "Terre",
    "Mars",
    "Mercure",
    "Saturne",
    "Vénus",
    "Neptune",
    "Uranus",
    "Jupiter"
  ];
}

void exercice1() {
  final List<String> planets = getPlanets();
  planets.sort((a, b) => b.compareTo(a));
  print(planets);
}

void exercice2() {
  final List<String> planets = getPlanets();
  for (final String planet in planets) {
    print(planet.toUpperCase());
  }
}

void exercice3() {
  final List<String> planets = getPlanets();
  int i = 0;
  while (i < planets.length) {
    print(planets[i][0]);
    i++;
  }
}

void exercice4() {
  final List<String> planets = getPlanets();
  int i = 0;
  do {
    print("${i + 1} - ${planets[i]}");
    i++;
  } while (i < planets.length);
}

void exercice5() {
  final List<String> planets = getPlanets();
  int i = 0;
  while (i < planets.length) {
    if (planets[i].endsWith("e") ||
        planets[i].endsWith("a") ||
        planets[i].endsWith("i") ||
        planets[i].endsWith("o") ||
        planets[i].endsWith("u")) {
      print(planets[i]);
    }
    i++;
  }
}

void exercice6() {
  final List<String> planets = getPlanets();
  planets.add("Pluton");
  print(planets);
}

void exercice7() {
  final List<Planet> planets = [
    Planet("Mercure", 91.69),
    Planet("Saturne", 1275),
    Planet("Neptune", 4351.40),
    Planet("Jupiter", 628.73),
    Planet("Mars", 78.34),
    Planet("Venus", 41.40),
    Planet("Uranus", 2723.95)
  ];

  planets.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth));
  print(planets);
}

void exercice8() {
  final Map<String, String> apollo = {
    "07_1969": "Apollo 11",
    "11_1969": "Apollo 12",
    "02_1971": "Apollo 14",
    "07_1971": "Apollo 15",
    "04_1972": "Apollo 16",
    "12_1972": "Apollo 17"
  };
  print(apollo);
  print(apollo["07_1971"]);
  print(apollo.keys);
  print(apollo.values);
}

void exercice9() {
  final Map<String, String> apollo = {
    "07_1969": "Apollo 11",
    "11_1969": "Apollo 12",
    "02_1971": "Apollo 14",
    "07_1971": "Apollo 15",
    "04_1972": "Apollo 16",
    "12_1972": "Apollo 17"
  };
  apollo.update("07_1969", (value) => "Neil Armstrong + BuzzAldrin");
  print(apollo["07_1969"]);
}

void exercice10() {
  final List<SolarSystemElement> elements = [
    SolarSystemElement(name: "sun", kind: Kind.star),
    SolarSystemElement(name: "earth", kind: Kind.planet),
    SolarSystemElement(name: "moon", kind: Kind.satellite),
    SolarSystemElement(name: "pluton", kind: Kind.satellite)
  ];
  print(elements);
}
