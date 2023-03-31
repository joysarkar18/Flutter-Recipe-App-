import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:recipe_app/dummy_list.dart';
import 'package:recipe_app/fav.dart';
import 'package:recipe_app/food.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FoodRecipe extends StatefulWidget {
  final String id;
  final String title;
  final String recipe;
  final String url;

  FoodRecipe(
      {required this.id,
      required this.title,
      required this.recipe,
      required this.url});

  @override
  State<FoodRecipe> createState() => _FoodRecipeState();
}

class _FoodRecipeState extends State<FoodRecipe> {
  @override
  Widget build(BuildContext context) {
    IconData fav = Icons.favorite_rounded;
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
                    child: Icon(Icons.list_alt),
                  ),
                  InkWell(
                    onTap: () {
                      Fluttertoast.showToast(
                          msg: "Item added to favroite",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      setState(() {
                        DUMMY_FAV.add(Food(
                            id: widget.id,
                            title: widget.title,
                            recipe: widget.recipe,
                            url: widget.url));
                      });
                    },
                    child: Icon(fav),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
