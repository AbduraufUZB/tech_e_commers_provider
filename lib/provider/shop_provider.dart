import 'package:findgadget_app/models/laptop_model.dart';
import 'package:flutter/material.dart';

class ShopProvider extends ChangeNotifier {
  List<LaptopModel> lstShopLP = [];
  List<int> lstShopNum = [];

  addShop(LaptopModel l) {
    lstShopLP.add(l);
    lstShopNum.add(1);
    notifyListeners();
  }

  checkShopList(LaptopModel l) {
    for (var item in lstShopLP) {
      if (item.name.toString() == l.name.toString()) {
        return true;
      }
    }
    return false;
  }

  plusShopNum(int i) {
    lstShopNum[i] += 1;
    notifyListeners();
  }

  minusShopNum(int i) {
    if (lstShopNum[i] != 0) {
      lstShopNum[i] -= 1;
    }
    notifyListeners();
  }
}
