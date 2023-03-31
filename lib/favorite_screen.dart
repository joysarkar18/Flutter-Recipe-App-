import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:recipe_app/dummy_list.dart';
import 'package:recipe_app/food_recipe_screen.dart';
import 'package:recipe_app/modules/recipe_category_list.dart';

import 'fav.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: DUMMY_FAV
            .map((e) => Fav(
                  id: e.id,
                  title: e.title,
                  recipe: e.recipe,
                  url: e.url,
                ))
            .toList(),
      ),
    );
  }
}
