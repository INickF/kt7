import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

class PriceConverter implements JsonConverter<double, String> {
  const PriceConverter();

  @override
  String toJson(double object) {
    return object.toString();
  }

  @override
  double fromJson(String object) {
    return double.parse(object.substring(1));
  }
}

@freezed
class Car with _$Car {
  factory Car({
    required int id,
    @JsonKey(name: "car") required String brand,
    @JsonKey(name: "car_model") required String model,
    @JsonKey(name: "car_color") required String color,
    @JsonKey(name: "car_model_year") required int year,
    @JsonKey(name: "car_vin") required String vin,
    @PriceConverter() required String price,
    @JsonKey(name: "availability") required bool available,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
