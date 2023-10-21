import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../ui/home/car_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Cars catalog | Status: ${controller.status.name}")),
        titleTextStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
      body: Center(
        child: Obx(
          () => !controller.isLoaded
              ? const CircularProgressIndicator()
              : RefreshIndicator(
                onRefresh: () async => controller.updateData(),
                child: ListView.builder(
                    itemCount: controller.cars.length,
                    itemBuilder: (BuildContext context, index) => CarCard(car: controller.cars[index]),
                  ),
              ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.updateData(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
