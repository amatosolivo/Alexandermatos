import 'package:flutter/cupertino.dart';
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
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: ()=> Get.back(),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${_.pelicula.titulo} ${_.pelicula.rating}"),
              CupertinoButton(
                child: Text("Agregar a Favoritos"),
                onPressed: _.guardarEnFavoritos,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
