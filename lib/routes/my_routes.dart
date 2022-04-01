import 'package:findgadget_app/core/components/my_tab_bar_page.dart';
import 'package:findgadget_app/models/laptop_model.dart';
import 'package:findgadget_app/screens/home_page_folder/home_page.dart';
import 'package:findgadget_app/screens/home_page_folder/search_page.dart';
import 'package:findgadget_app/screens/home_page_folder/single_item_page.dart';
import 'package:findgadget_app/screens/login_page.dart';
import 'package:findgadget_app/screens/profile_page_folder/profile_page.dart';
import 'package:findgadget_app/screens/splash_page.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/":
        return MaterialPageRoute(builder: (ctx) => const SplashPage());
      case "/login":
        return MaterialPageRoute(builder: (ctx) => const LoginPage());
      case "/home":
        return MaterialPageRoute(builder: (ctx) => Homepage());
      case "/search":
        return MaterialPageRoute(builder: (ctx) => const SearchPage());
      case "/single":
        return MaterialPageRoute(
            builder: (ctx) => SingleItemPage(lst: (args as LaptopModel)));
      case "/profile":
        return MaterialPageRoute(builder: (ctx) => const ProfilePage());
      case "/tab":
        return MaterialPageRoute(builder: (ctx) => const MyTabBar());
    }
  }
}
