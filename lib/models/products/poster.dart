class Poster {
  final String image;
  final String title;
  Poster({
    required this.image,
    required this.title,
  });
}

List<Poster> posters = [
  Poster(image: "assets/Advertisement.jpg", title: "SPARKLING NEW PIECES"),
  Poster(image: "assets/Advertisement.jpg", title: "RECENTLY REDUCED ITEMS"),
  Poster(image: "assets/Advertisement.jpg", title: "UP TO 90% OFF")
];
