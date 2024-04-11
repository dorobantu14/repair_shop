import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repair_shop/features/main_screen/models/day_model.dart';

part 'week_model.freezed.dart';

@freezed
class WeekModel with _$WeekModel {
  const factory WeekModel({
    required List<DayModel> days,
  }) = _WeekModel;
}
