// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: json['id'] as int,
      brand: json['car'] as String,
      model: json['car_model'] as String,
      color: json['car_color'] as String,
      year: json['car_model_year'] as int,
      vin: json['car_vin'] as String,
      price: json['price'] as String,
      available: json['availability'] as bool,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'car': instance.brand,
      'car_model': instance.model,
      'car_color': instance.color,
      'car_model_year': instance.year,
      'car_vin': instance.vin,
      'price': instance.price,
      'availability': instance.available,
    };
