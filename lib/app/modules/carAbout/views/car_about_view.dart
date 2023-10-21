import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_about_controller.dart';

class CarAboutView extends GetView<CarAboutController> {
  const CarAboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.car.brand,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${controller.car.brand} ${controller.car.model}",
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 80),
              const Text(
                "Parameters: ",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              Text(
                "Color: ${controller.car.color} | Year: ${controller.car.year}",
                style: const TextStyle(fontSize: 22),
              ),
              Text(
                "VIN: ${controller.car.vin}",
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.snackbar("Liked", "You liked this car", snackPosition: SnackPosition.BOTTOM);
                    },
                    icon: const Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                      size: 35,
                    ),
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    onPressed: () {
                      Get.snackbar("Cart", "You added this car to cart", snackPosition: SnackPosition.BOTTOM);
                    },
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Get.theme.primaryColorDark,
                      size: 35,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
