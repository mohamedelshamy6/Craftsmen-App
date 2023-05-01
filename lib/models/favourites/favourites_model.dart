class Favourites {
  final int id;
  final String name;
  final String imageUrl;
  final String jobName;
  bool isFavourite;

  Favourites({
    required this.jobName,
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isFavourite = false,
  });
}
