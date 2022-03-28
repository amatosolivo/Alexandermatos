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
            onPressed: () => Get.back(),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(_.pelicula.urlImagenPelicula),
                  )
                ),
              ),
              SizedBox(height: 10,),
              Text("${_.pelicula.titulo} ${_.pelicula.rating}"),
              SizedBox(height: 10,),
              FloatingActionButton(onPressed: () =>_.guardarEnFavoritos(_.pelicula.id), child: Icon(Icons.star),)
            ],
          ),
        ),
      ),
    );
  }
}
