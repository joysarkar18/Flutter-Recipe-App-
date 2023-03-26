import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecipeItem extends StatelessWidget {
  Color color;
  String title;
  String url;

  RecipeItem(this.color, this.title, this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 12,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 2,
                color: Colors.black,
                blurStyle: BlurStyle.normal)
          ],
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken)),
        ),
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
      ),
    );
    ;
  }
}
