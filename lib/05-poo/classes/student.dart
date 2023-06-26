import 'package:exercice/05-poo/classes/lessons.dart';

class Student {
  Student(this._firstname, this._lastname);

  String _firstname = "";
  String _lastname = "";
  List<Lesson> _lessons = [];

  String get firstname => _firstname;
  set firstname(String firstname) => _firstname = firstname;

  String get lastname => _lastname;
  set lastname(String lastname) => _lastname = lastname;

  List<Lesson> get lessons => _lessons;
  set lessons(List<Lesson> lessons) => _lessons = lessons;

  @override
  String toString() {
    return "$_firstname $_lastname $_lessons";
  }
}
