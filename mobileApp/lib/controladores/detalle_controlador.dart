import 'package:get/get.dart';
import 'package:mis_peliculas/paginas/home/home_page.dart';

class DetalleControlador extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.to(
        HomePage(),
        transition: Transition.zoom,
      );
    });
  }
}
