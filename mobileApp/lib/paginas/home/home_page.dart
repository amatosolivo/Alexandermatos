import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_peliculas/controladores/home_controlador.dart';
import 'package:mis_peliculas/paginas/home/home_page_widgets/home_lista_peliculas.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControlador>(
      init: HomeControlador(),
      builder: (_) {
        return Scaffold(
          body: HomeListaPeliculas(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Ver favoritos");
            },
            child: Icon(Icons.star),
          ),
        );
      },
    );
  }
}
