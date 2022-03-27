import 'package:get/get.dart';
import 'package:mis_peliculas/api/peliculas_api.dart';
import 'package:mis_peliculas/models/pelicula.dart';
import 'package:mis_peliculas/paginas/detalle/detalle_page.dart';

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

  Future<void> showDetallePelicula(Pelicula pelicula) async {
    final resultado = await Get.to<String>(
      DetallePage(),
      arguments: pelicula,
    );
    if (resultado!=null) {
      print("resultado $resultado");
    }
  }
}
