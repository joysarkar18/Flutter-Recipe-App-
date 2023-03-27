import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:recipe_app/modules/recipe_category_list.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    final routeData =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final title = routeData["title"];
    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: Center(
        child: Text("HIIII"),
      ),
    );
  }
}
