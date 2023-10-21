import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import '../models/car/car.dart';

class CarService extends GetxService {
  final String _url = "https://myfakeapi.com/api/cars";
  final Dio _client = Dio();

  Future<List<Car>?> getAll() async {
    try {
      Response dataReceived = await _client.get(_url);

      if (dataReceived.statusCode != 200) return null;

      List<dynamic> carData = dataReceived.data["cars"];
      List<Car> cars = carData.map((obj) => Car.fromJson(obj)).toList();
      return cars;
    } catch (_) {
      printError(info: "Error at CarService:getAll");
      return null;
    }
  }
}
