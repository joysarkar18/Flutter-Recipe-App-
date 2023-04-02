import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:recipe_app/dummy_list.dart';
import 'package:recipe_app/recipe_screen.dart';

class Fav extends StatefulWidget {
  final String id;
  final String title;
  final String recipe;
  final String url;

  Fav(
      {required this.id,
      required this.title,
      required this.recipe,
      required this.url});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    IconData fav = Icons.delete;
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      elevation: 10,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              alignment: Alignment.center,
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.url), fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ))),
          Container(
            color: Color.fromARGB(255, 94, 255, 131),
            height: 50,
            width: double.infinity,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeScreen(
                                title: widget.title, recipe: widget.recipe),
                          ));
                    },
                    child: Icon(Icons.list_alt),
                  ),
                  InkWell(
                    child: Icon(fav),
                    onTap: () {
                      setState(() {
                        DUMMY_FAV
                            .removeWhere((element) => widget.id == element.id);
                      });
                    },
                  )
                ]),
          )
        ],
      ),
    );
  }
}
