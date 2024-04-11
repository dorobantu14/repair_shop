import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/repair_screen/models/repair_service_model.dart';
import 'package:repair_shop/features/repair_screen/presentation/bloc/repair_service_bloc.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({
    required this.services,
    super.key,
  });

  final List<RepairServiceModel> services;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        displacement: 4,
        onRefresh: () async {
          final bloc = context.read<RepairServiceBloc>()
            ..add(const RepairServiceEvent.getRepairServices());
          return bloc.stream.firstWhere(
            (state) => state.status == RepairServiceStatus.success,
          ) as Future<void>;
        },
        child: GridView.builder(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1,
            top: 32,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
          ),
          itemCount: services.length,
          itemBuilder: (context, index) {
            final service = services[index];
            return Card(
              child: Column(
                children: [
                  Text(service.name, style: TextStyles.blackBoldTextStyle),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow),
                      Text(service.rating.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      Text(service.price.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.av_timer_outlined),
                      Text('${service.time} ${Strings.minutesText}'),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
