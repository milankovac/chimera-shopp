import 'package:flutter/foundation.dart';

class Login with ChangeNotifier {
  final String id;
  final String password;
  final String email;
  final String name;
  final String lastName;

  Login({
    required this.id,
    required this.password,
    required this.email,
    required this.name,
    required this.lastName,
  });
}
