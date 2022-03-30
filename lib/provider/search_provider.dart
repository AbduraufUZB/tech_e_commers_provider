import 'package:findgadget_app/mock/mock_data.dart';
import 'package:findgadget_app/models/laptop_model.dart';
import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  List<LaptopModel> searchList = [];
  
  addSearchItem(String onChanged) {
    if (onChanged.isEmpty) {
      searchList.clear();
      notifyListeners();
    } else {
      for (var item in MockData.myData) {
        for (var item2 in item) {
          if (item2.name!.toLowerCase().contains(onChanged.toLowerCase())) {
            searchList.add(item2);
          }
        }
      }
    }
    notifyListeners();
  }
  get clearSearchItems {
    searchList.clear();
    notifyListeners();
  }
}
