import 'package:flutter/material.dart';
import './favorite_screen.dart';
import './recipe_menu_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 157,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
                child: Center(child: Text('Drawer Header')),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Recipe App"),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.category),
            ),
            Tab(
              child: Icon(Icons.favorite),
            )
          ]),
        ),
        body: TabBarView(children: [
          RecipeList(),
          Fav(),
        ]),
      ),
    );
  }
}
