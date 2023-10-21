import 'package:get/get.dart';

import '../controllers/car_about_controller.dart';

class CarAboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarAboutController>(
      () => CarAboutController(),
    );
  }
}
