import 'package:findgadget_app/provider/change_provider.dart';
import 'package:findgadget_app/provider/password_provider.dart';
import 'package:findgadget_app/provider/search_provider.dart';
import 'package:findgadget_app/routes/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => PasswordProvider()),
      ChangeNotifierProvider(create: (_) => ChangeProvider()),
      ChangeNotifierProvider(create: (_) => SearchProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  MyRoutes _myRoutes = MyRoutes();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _myRoutes.onGenerateRoute,
      initialRoute: "/",
    );
  }
}
