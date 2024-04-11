// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repair_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepairServiceModelImpl _$$RepairServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepairServiceModelImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      time: json['time'] as int,
    );

Map<String, dynamic> _$$RepairServiceModelImplToJson(
        _$RepairServiceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'rating': instance.rating,
      'time': instance.time,
    };
