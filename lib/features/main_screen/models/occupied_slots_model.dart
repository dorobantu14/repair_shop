import 'package:freezed_annotation/freezed_annotation.dart';

part 'occupied_slots_model.freezed.dart';
part 'occupied_slots_model.g.dart';

@freezed
class OccupiedSlotsModel with _$OccupiedSlotsModel {
  const factory OccupiedSlotsModel({
    required String dayDate,
    required String month,
    required String time,
  }) = _OccupiedSlotsModel;

  factory OccupiedSlotsModel.fromJson(Map<String, dynamic> json) =>
      _$OccupiedSlotsModelFromJson(json);
}
