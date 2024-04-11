import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_model.freezed.dart';
part 'day_model.g.dart';

@Freezed(fromJson: true)
class DayModel with _$DayModel {
  const factory DayModel({
    required String dayName,
    required String dayDate,
    required String month,
    required String year,
  }) = _DayModel;

  factory DayModel.fromJson(Map<String, dynamic> json) {
    return _$DayModelFromJson(json);
  }
}
