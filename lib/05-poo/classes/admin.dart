import 'User.dart';

class Admin extends User {
  int _grade = 1;

  Admin(String name, String email, String password)
      : super(name, email, password);

  int get grade {
    return _grade;
  }

  set grade(int grade) {
    _grade = grade;
  }
}
