class Movie {
  final String id;
  final String title;
  final String description;
  final String duration;
  final String rating;
  final String screeningTimes;
  final double ticketPrice;
  final String imageUrl;

  const Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.duration,
    required this.rating,
    required this.screeningTimes,
    required this.ticketPrice,
    required this.imageUrl,
  });
}
