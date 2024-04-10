import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/core/widgets/calendar.dart';
import 'package:repair_shop/main_screen/domain/bloc/shop_bloc.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
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
            onSlotSelected: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(milliseconds: 600),
                  content: Text(
                    'Slot selected',
                    style: TextStyles.whiteBoldTextStyle,
                  ),
                  backgroundColor: AppColors.lightGrey,
                ),
              );
            },
            occupiedSlots: state.occupiedSlots,
          ),
        );
      },
    );
  }
}
