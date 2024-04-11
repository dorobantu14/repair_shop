import 'package:freezed_annotation/freezed_annotation.dart';

part 'repair_service_model.freezed.dart';

part 'repair_service_model.g.dart';

@Freezed(toJson: true, fromJson: true)
class RepairServiceModel with _$RepairServiceModel {
  const factory RepairServiceModel({
    required String name,
    required double price,
    required double rating,
    required int time,
  }) = _RepairServiceModel;

  factory RepairServiceModel.fromJson(Map<String, dynamic> json) {
    return _$RepairServiceModelFromJson(json);
  }
}
