import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/common/common_widgets.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/main_screen/models/occupied_slots_model.dart';
import 'package:repair_shop/features/main_screen/presentation/bloc/shop_bloc.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  OccupiedSlotsModel? bookedSlot;

  @override
  void initState() {
    super.initState();
    context.read<ShopBloc>().add(const ShopEvent.getOccupiedSlots());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.7,
          child: Calendar(
            onSlotSelected: (occupiedSlot) {
              setState(() {
                bookedSlot = occupiedSlot;
              });
              context.read<ShopBloc>().add(
                    ShopEvent.bookSlot(occupiedSlot: occupiedSlot),
                  );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(milliseconds: 600),
                  content: Text(
                    '${occupiedSlot.time} '
                    '${Strings.slotSelectedSuccessfullyText}',
                    style: TextStyles.whiteButtonTextStyle,
                  ),
                  backgroundColor: AppColors.lightGrey,
                ),
              );
            },
            occupiedSlots: bookedSlot != null
                ? [...state.occupiedSlots, bookedSlot!]
                : state.occupiedSlots,
          ),
        );
      },
    );
  }
}
