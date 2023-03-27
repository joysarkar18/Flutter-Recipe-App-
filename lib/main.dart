import 'package:flutter/material.dart';
import 'package:recipe_app/food_screen.dart';
import 'package:recipe_app/tab_bar.dart';
import './recipe_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Kanit",
        canvasColor: const Color.fromARGB(255, 226, 225, 225),
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => TabScreen(),
        "/food": (context) => FoodList(),
      },
    );
  }
}
