import 'package:dio/dio.dart';
import 'package:mis_peliculas/models/pelicula.dart';

class PeliculasAPI {
  PeliculasAPI._interal();

  static PeliculasAPI _instance = PeliculasAPI._interal();
  static PeliculasAPI get instance => _instance;
  final _dio = Dio();

  Future<List<Pelicula>?> getPeliculas(int page) async {
    try {
      final Response response = await _dio.get(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=bf091621962bdf5c30339e874a2a0c1a&language=en-US',
        queryParameters: {
          "page": page,
        },
      );

      return (response.data['results'] as List)
          .map((e) => Pelicula.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}

/*

https://api.themoviedb.org/3/movie/top_rated?api_key=bf091621962bdf5c30339e874a2a0c1a&language=en-US&page=1

{
page: 1,
results: [
{
adult: false,
backdrop_path: "/wPU78OPN4BYEgWYdXyg0phMee64.jpg",
genre_ids: [
18,
80
],
id: 278,
original_language: "en",
original_title: "The Shawshank Redemption",
overview: "Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
popularity: 83.122,
poster_path: "/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
release_date: "1994-09-23",
title: "The Shawshank Redemption",
video: false,
vote_average: 8.7,
vote_count: 21018
},

 */
