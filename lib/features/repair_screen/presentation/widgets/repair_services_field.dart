import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/common/common_widgets.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/repair_screen/presentation/bloc/repair_service_bloc.dart';

class RepairServicesField extends StatefulWidget {
  const RepairServicesField({super.key});

  @override
  State<RepairServicesField> createState() => _RepairServicesFieldState();
}

class _RepairServicesFieldState extends State<RepairServicesField> {
  @override
  void initState() {
    super.initState();
    context
        .read<RepairServiceBloc>()
        .add(const RepairServiceEvent.getRepairServices());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepairServiceBloc, RepairServiceState>(
      builder: (context, state) {
        return SuggestionsField(
          hintText: Strings.searchTenderText,
          onSelected: (_) {},
          optionsBuilder: _buildServiceOptions,
          suffixIcon: const Icon(Icons.search),
        );
      },
    );
  }

  FutureOr<Iterable<String>> _buildServiceOptions(
    TextEditingValue textEditingValue,
  ) async {
    final state = context.read<RepairServiceBloc>().state;
    if (textEditingValue.text.isEmpty) {
      return state.repairServices.map((e) => e.name).toList();
    }
    return state.repairServices
        .map((e) => e.name)
        .toList()
        .where(
          (element) => element
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase()),
        )
        .toList();
  }
}
