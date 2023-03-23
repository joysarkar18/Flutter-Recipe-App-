import 'package:flutter/material.dart';
import 'package:recipe_app/recipe_item.dart';
import './dummy_list.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe App")),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children:
            DUMMY_LIST.map((e) => RecipeItem(e.color, e.categoryName)).toList(),
      ),
    );
  }
}