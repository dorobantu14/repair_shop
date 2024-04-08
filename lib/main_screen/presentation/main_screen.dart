import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/main_screen/presentation/products_screen.dart';
import 'package:repair_shop/main_screen/presentation/schedule_screen.dart';
import 'package:repair_shop/main_screen/presentation/stepper.dart';
import 'package:collection/collection.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;
  final steps = <String>[
    Strings.bidText,
    Strings.setTimeText,
  ];

  final stepsContent = <Widget>[
    const ProductsScreen(),
    const ScheduleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            AppDotStepper(
              dotCount: 2,
              activeStep: activeIndex,
              steps: _buildSteps(),
            ),
            stepsContent[activeIndex],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (activeIndex >= steps.length - 1) _getBackButton(),
                if (activeIndex < steps.length) _getNextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<EasyStep> _buildSteps() {
    return steps.mapIndexed((index, step) {
      return EasyStep(
        customStep: Text(
          '${index + 1}',
          style: TextStyles.whiteBoldTextStyle,
        ),
        customTitle: Text(
          index == activeIndex ? step : '',
          style: TextStyles.boldGreyTextStyle,
        ),
      );
    }).toList();
  }

  Widget _getNextButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeIndex++;
        });
      },
      child: const Text(
        Strings.nextText,
        style: TextStyles.boldGreyTextStyle,
      ),
    );
  }

  Widget _getBackButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeIndex--;
        });
      },
      child: const Text(
        Strings.backText,
        style: TextStyles.boldGreyTextStyle,
      ),
    );
  }
}
