import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecipeItem extends StatelessWidget {
  Color color;
  String title;

  RecipeItem(this.color, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    );
    ;
  }
}
