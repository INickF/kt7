import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt7/app/data/models/car/car.dart';
import 'package:kt7/app/routes/app_pages.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => Get.toNamed(Routes.CAR_ABOUT, arguments: car),
        enabled: car.available,
        leading: Text("@${car.id}", style: const TextStyle(fontSize: 16)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${car.brand} ${car.model}", style: const TextStyle(fontSize: 20)),
            Text("Color: ${car.color} | Year: ${car.year}"),
            Text("VIN: ${car.vin}"),
          ],
        ),
        trailing: Icon(
          Icons.info,
          size: 35,
          color: car.available ? Get.theme.primaryColorDark : Get.theme.disabledColor,
        ),
      ),
    );
  }
}
