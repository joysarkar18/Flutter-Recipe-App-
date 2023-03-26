import 'package:flutter/widgets.dart';

class Category {
  String id;
  String categoryName;
  Color color;
  String url;

  Category(this.id, @required this.categoryName, @required this.color,
      @required this.url);
}
