part of 'repair_service_bloc.dart';

@freezed
class RepairServiceEvent with _$RepairServiceEvent {
  const factory RepairServiceEvent.getRepairServices({
    @Default(false) bool isInitial,
  }) = _GetRepairServicesEvent;

  const factory RepairServiceEvent.sortRepairServices({
    required SortingOption sortingOption,
  }) = _SortRepairServicesEvent;
}
