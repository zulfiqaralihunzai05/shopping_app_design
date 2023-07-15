import 'package:flutter/material.dart';

import 'Pages/CartPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/ItemPage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) =>HomePage(),
        "cartPage" : (context) =>CartPage(),
        "itemPage" : (context) =>ItemPage(),
      },
    );
  }
}