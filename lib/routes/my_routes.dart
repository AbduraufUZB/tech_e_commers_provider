import 'package:findgadget_app/screens/home_page_folder/home_page.dart';
import 'package:findgadget_app/screens/home_page_folder/search_page.dart';
import 'package:findgadget_app/screens/login_page.dart';
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
    }
  }
}
