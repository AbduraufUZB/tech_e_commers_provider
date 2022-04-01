import 'package:findgadget_app/models/laptop_model.dart';
import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  List<LaptopModel> lstFavourite = [];

  addFavourite(LaptopModel l) {
    lstFavourite.add(l);
    notifyListeners();
  }

  removeFavourite(LaptopModel l) {
    int i = 0;
    for (var item in lstFavourite) {
      if (item.name.toString() == l.name.toString()) {
        lstFavourite.removeAt(i);
      }
      i++;
    }
    notifyListeners();
  }
}
