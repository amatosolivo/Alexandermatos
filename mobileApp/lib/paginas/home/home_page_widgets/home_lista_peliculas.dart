import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_peliculas/controladores/home_controlador.dart';

import '../../../models/pelicula.dart';

class HomeListaPeliculas extends StatelessWidget {
  const HomeListaPeliculas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControlador>(
        id: 'listadoPeliculas',
        builder: (_) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final Pelicula pelicula = _.peliculas![index];
              return ListTile(
                title: Text(pelicula.titulo),
                subtitle: Text(pelicula.rating.toString()),
              );
            },
            itemCount: _.peliculas?.length,
          );
        });
  }
}
