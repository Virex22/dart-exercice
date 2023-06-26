import 'dart:convert';
import 'package:crypto/crypto.dart' as crypto;

class User {
  User(this.firstname, this.lastname, this.email);

  String firstname;
  String lastname;
  String email;
  String _password = "";
  String _hash = "";

  @override
  String toString() {
    String obfuscatedPassword = "*" * _password.length;
    return '$firstname $lastname ($email - $obfuscatedPassword)';
  }

  set password(String password) {
    _password = password;
    _hash = crypto.sha256.convert(utf8.encode(password)).toString();
  }

  void sayHello() {
    print("Hello, I'm $firstname $lastname !");
  }

  bool authenticate({required String password}) {
    String hash = crypto.sha256.convert(utf8.encode(password)).toString();
    return hash == _hash;
  }
}
