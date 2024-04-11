import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repair_shop/features/main_screen/models/week_model.dart';

part 'calendar_model.freezed.dart';

@freezed
class CalendarModel with _$CalendarModel {
  const factory CalendarModel({
    required List<WeekModel> weeks,
  }) = _CalendarModel;
}
