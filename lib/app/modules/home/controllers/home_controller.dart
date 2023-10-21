import 'package:get/get.dart';
import 'package:kt7/app/data/models/car/car.dart';
import 'package:kt7/app/data/network_statuses/network_status.dart';
import 'package:kt7/app/data/provider/car_service.dart';

class HomeController extends GetxController {
  final _cars = <Car>[].obs;
  final _status = NetworkStatus.init.obs;

  final _service = Get.find<CarService>();

  List<Car> get cars => _cars;
  NetworkStatus get status => _status.value;
  bool get isLoaded => _status.value == NetworkStatus.finished;

  @override
  void onInit() {
    updateData();
    super.onInit();
  }

  void updateData() async {
    _status.value = NetworkStatus.loading;

    List<Car>? newCars = await _service.getAll();

    if (newCars == null) {
      _status.value = NetworkStatus.error;
      return;
    }

    _cars.value = newCars;
    _status.value = NetworkStatus.finished;
  }
}
