import 'package:flutter/material.dart';

class ChangeProvider extends ChangeNotifier {
  int currentindex = 0;
  get firstButtonClick {
    currentindex = 0;
    notifyListeners();
  }

  get secondButtonClick {
    currentindex = 1;
    notifyListeners();
  }

  get thirdButtonClick {
    currentindex = 2;
    notifyListeners();
  }
}
