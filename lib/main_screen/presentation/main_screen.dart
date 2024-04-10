import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/core/widgets/stepper.dart';
import 'package:repair_shop/main_screen/presentation/products_screen.dart';
import 'package:repair_shop/main_screen/presentation/repair_screen.dart';
import 'package:repair_shop/main_screen/presentation/schedule_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;
  final steps = <String>[
    Strings.createQuoteText,
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
              dotCount: steps.length,
              activeStep: activeIndex,
              steps: _buildSteps(),
            ),
            Expanded(child: stepsContent[activeIndex]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  if (activeIndex >= steps.length - 1) _getBackButton(),
                  const Spacer(),
                  if (activeIndex < steps.length - 1) _getNextButton(),
                  if (activeIndex == steps.length - 1) _getCreateButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<EasyStep> _buildSteps() {
    return List.generate(
      steps.length,
      (index) => EasyStep(
        customStep: Text(
          '${index + 1}',
          style: TextStyles.whiteBoldTextStyle,
        ),
        customTitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              index == activeIndex ? steps[index] : '',
              style: TextStyles.boldGreyTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCreateButton() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => const RepairScreen(),
          ),
        );
      },
      child: const Text(
        Strings.createText,
        style: TextStyles.boldGreyTextStyle,
      ),
    );
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
