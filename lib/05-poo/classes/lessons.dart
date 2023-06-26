class Lesson {
  Lesson(this._name);

  String _name = "";

  String get name => _name;
  set name(String name) => _name = name;

  @override
  String toString() {
    return _name;
  }
}
