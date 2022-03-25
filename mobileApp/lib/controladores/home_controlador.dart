import 'package:get/get.dart';
import 'package:mis_peliculas/api/peliculas_api.dart';
import 'package:mis_peliculas/models/pelicula.dart';

class HomeControlador extends GetxController {
  List<Pelicula>? _peliculas = [];
  List<Pelicula>? get peliculas => _peliculas;

  Future<void> cargaPeliculas() async {
    final data = await PeliculasAPI.instance.getPeliculas(1);
    _peliculas = data;
    update(['listadoPeliculas']);
  }

  @override
  void onReady() {
    super.onReady();
    cargaPeliculas();
  }
}
