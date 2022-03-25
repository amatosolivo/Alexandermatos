import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_peliculas/controladores/detalle_controlador.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetalleControlador>(
      init: DetalleControlador(),
      builder: (_) => Scaffold(
        body: Center(
          child: Text("${_.pelicula.titulo} ${_.pelicula.rating}"),
        ),
      ),
    );
  }
}
