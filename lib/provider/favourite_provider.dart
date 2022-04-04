import 'package:findgadget_app/models/laptop_model.dart';
import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  onPressedIcon(LaptopModel l) {
    l.like = !l.like;
    notifyListeners();
  }
}
