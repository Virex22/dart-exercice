enum Kind { planet, star, satellite, asteroid, comet }

class SolarSystemElement {
  SolarSystemElement({required this.name, required this.kind});

  String name;
  Kind kind;

  @override
  String toString() {
    return '$name ($kind)';
  }
}
