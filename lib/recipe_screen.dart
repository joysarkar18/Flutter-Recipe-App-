import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecipeScreen extends StatelessWidget {
  String title;
  String recipe;

  RecipeScreen({required this.title, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              recipe,
              style: TextStyle(fontSize: 16),
            )
          ],
        ));
  }
}
