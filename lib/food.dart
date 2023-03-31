class Food {
  final String id;
  final String title;
  final String recipe;
  final String url;
  bool isFav;

  Food({
    required this.id,
    required this.title,
    required this.recipe,
    required this.url,
    this.isFav = false,
  });
}
