import 'package:get/get.dart';
import 'package:mis_peliculas/paginas/home/home_page.dart';

import '../models/pelicula.dart';

class DetalleControlador extends GetxController {
  late Pelicula _pelicula;
  Pelicula get pelicula => _pelicula;

  @override
  void onInit() {
    super.onInit();

    _pelicula = Get.arguments as Pelicula;
    print("Get.arguments ${Get.arguments}");
  }
}
