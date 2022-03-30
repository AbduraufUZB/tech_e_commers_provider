import 'package:flutter/material.dart';

class PasswordProvider extends ChangeNotifier {
  bool show = true;

  get changeShowPass {
    this.show = !this.show;
    notifyListeners();
  }
}
