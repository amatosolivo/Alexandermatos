import 'package:favorite_button/favorite_button.dart';
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
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(_.pelicula.urlImagenPelicula),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${_.pelicula.titulo}",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${_.pelicula.rating}",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              FavoriteButton(valueChanged: (_favorita) {
                print('Es favorita : $_favorita');
              })
            ],
          ),
        ),
      ),
    );
  }
}
