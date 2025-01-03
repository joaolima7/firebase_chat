import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  bool isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void clearControllers() {
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  void signUp() async {
    setLoading(true);
    setLoading(false);
  }
}
