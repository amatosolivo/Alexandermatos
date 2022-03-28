import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/pelicula.dart';

class DetalleControlador extends GetxController {
  late Pelicula _pelicula;

  Pelicula get pelicula => _pelicula;
  String _idPeliculaAFavorito = "";

  @override
  void onInit() {
    super.onInit();

    _pelicula = Get.arguments as Pelicula;
    print("Get.arguments ${Get.arguments}");
  }

  void guardarEnFavoritos(int id) {
    // Guardar la pelicula en favoritos y luego mostrar dialogo de proceso exitoso
    
    Get.back(result: "Hola desde la pagina de detalle $id");
  }
}
