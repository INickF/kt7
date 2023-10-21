import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/data/provider/car_service.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await initServices();

  runApp(
    GetMaterialApp(
      title: "kt7",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
        ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  await Get.putAsync<CarService>(() async => CarService());
}
