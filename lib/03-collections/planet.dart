class Planet {
  String name;
  double distanceFromEarth;

  Planet(this.name, this.distanceFromEarth);

  @override
  String toString() {
    return '$name ($distanceFromEarth)';
  }
}
