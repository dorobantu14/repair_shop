import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repair_shop/features/repair_screen/domain/repository/repair_service_repository.dart';
import 'package:repair_shop/features/repair_screen/models/repair_service_model.dart';
import 'package:repair_shop/features/repair_screen/presentation/widgets/sorting_option.dart';

part 'repair_service_event.dart';

part 'repair_service_state.dart';

part 'repair_service_bloc.freezed.dart';

class RepairServiceBloc extends Bloc<RepairServiceEvent, RepairServiceState> {
  RepairServiceBloc({required RepairServiceRepository repository})
      : _repository = repository,
        super(const RepairServiceState()) {
    on<_GetRepairServicesEvent>(_onGetRepairServices);
    on<_SortRepairServicesEvent>(_onSortRepairServices);
  }

  final RepairServiceRepository _repository;

  Future<void> _onGetRepairServices(
    _GetRepairServicesEvent event,
    Emitter<RepairServiceState> emit,
  ) async {
    try {
      if (event.isInitial) {
        emit(state.copyWith(status: RepairServiceStatus.initialLoading));
        await Future<void>.delayed(const Duration(seconds: 1));
      } else {
        emit(state.copyWith(status: RepairServiceStatus.loading));
      }
      final services = await _repository.getRepairServices();
      emit(
        state.copyWith(
          status: RepairServiceStatus.success,
          selectedSortingOption: null,
          repairServices: services,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: RepairServiceStatus.failure,
        ),
      );
    }
  }

  Future<void> _onSortRepairServices(
    _SortRepairServicesEvent event,
    Emitter<RepairServiceState> emit,
  ) async {
    if (state.selectedSortingOption == event.sortingOption) {
      emit(
        state.copyWith(selectedSortingOption: null),
      );
      add(const RepairServiceEvent.getRepairServices());
      return;
    }
    emit(
      state.copyWith(
        selectedSortingOption: event.sortingOption,
        repairServices: state.repairServices.toList()
          ..sort(event.sortingOption.comparator),
      ),
    );
  }
}
