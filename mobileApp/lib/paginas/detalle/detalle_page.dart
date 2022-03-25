import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_peliculas/controladores/detalle_controlador.dart';
import 'package:mis_peliculas/controladores/home_controlador.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DetalleControlador(),
      builder: (_) => const Scaffold(
        body: Center(
          child: Text("Detalles de peliculas"),
        ),
      ),
    );
  }
}
