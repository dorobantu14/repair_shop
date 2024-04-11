part of 'repair_service_bloc.dart';

@freezed
class RepairServiceState with _$RepairServiceState {
  const factory RepairServiceState({
    @Default(RepairServiceStatus.initial) RepairServiceStatus status,
    @Default(<RepairServiceModel>[]) List<RepairServiceModel> repairServices,
    SortingOption? selectedSortingOption,
  }) = _RepairServiceState;
}

enum RepairServiceStatus {
  initial,
  loading,
  success,
  failure,
}
