import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/common/common_widgets.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/repair_screen/data/repair_data.dart';
import 'package:repair_shop/features/repair_screen/domain/repository/repair_service_repository.dart';
import 'package:repair_shop/features/repair_screen/presentation/bloc/repair_service_bloc.dart';
import 'package:repair_shop/features/repair_screen/presentation/widgets/repair_services_field.dart';
import 'package:repair_shop/features/repair_screen/presentation/widgets/services_grid_view.dart';
import 'package:repair_shop/features/repair_screen/presentation/widgets/sorting_option.dart';

class RepairServiceScreen extends StatelessWidget {
  const RepairServiceScreen({
    required this.bookedSlot,
    super.key,
  });

  final String bookedSlot;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RepairServiceBloc(
        repository: RepairServiceRepository(data: RepairData()),
      )..add(const RepairServiceEvent.getRepairServices(isInitial: true)),
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: AppColors.white,
          leading: const BackButton(),
        ),
        body: _RepairServiceScreenBody(bookedSlot),
      ),
    );
  }
}

class _RepairServiceScreenBody extends StatelessWidget {
  const _RepairServiceScreenBody(this.bookedSlot);

  final String bookedSlot;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepairServiceBloc, RepairServiceState>(
      builder: (context, state) {
        return Column(
          children: [
            const Text(
              Strings.bookingText,
              style: TextStyles.blackBoldTextStyle,
            ),
            Text(
              bookedSlot,
              style: TextStyles.blackNormalTextStyle,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32, left: 16, right: 16),
              child: RepairServicesField(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: SortingOption.values
                  .map(
                    (option) => CheckBoxButton(
                      title: option.name,
                      value: state.selectedSortingOption == option,
                      onChanged: (value) {
                        context.read<RepairServiceBloc>().add(
                              RepairServiceEvent.sortRepairServices(
                                sortingOption: option,
                              ),
                            );
                      },
                    ),
                  )
                  .toList(),
            ),
            if (state.status == RepairServiceStatus.initialLoading)
              const _LoadingSection()
            else
              ServicesGridView(services: state.repairServices),
          ],
        );
      },
    );
  }
}

class _LoadingSection extends StatelessWidget {
  const _LoadingSection();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: AppColors.primary),
        ],
      ),
    );
  }
}
