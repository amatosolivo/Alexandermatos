class Pelicula {
  final int id;
  final String titulo;
  final double rating;
  final String overview;
  final String posterPath;

  Pelicula({
    required this.id,
    required this.titulo,
    required this.rating,
    required this.overview,
    required this.posterPath,
  });

  static Pelicula fromJson(Map<String, dynamic> json) {
    return Pelicula(
        id: json['id'],
        titulo: json['title'],
        rating: json['vote_average'],
        overview: json['overview'],
        posterPath: json['poster_path']);
  }
}
