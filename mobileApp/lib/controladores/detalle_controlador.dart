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

  void guardarEnFavoritos() {
    // Guardar la pelicula en favoritos y luego mostrar dialogo de proceso exitoso
    
    Get.dialog(AlertDialog(
      title: Text("CONFIRMADO!"),
      content: Text("\"${pelicula.titulo}\" ha sido agregada a favoritos!"),
      actions: [
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Ok"))
      ],
    ));
  }
}
