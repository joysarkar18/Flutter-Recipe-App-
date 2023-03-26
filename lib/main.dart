import 'package:flutter/material.dart';
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
        canvasColor: Color.fromARGB(255, 226, 225, 225),
        primarySwatch: Colors.lightGreen,
      ),
      home: const RecipeList(),
    );
  }
}
