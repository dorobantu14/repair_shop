import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:repair_shop/core/core.dart';

class AppDotStepper extends StatelessWidget {
  const AppDotStepper({
    super.key,
    required this.dotCount,
    required this.activeStep,
    this.tappingEnabled,
    this.onDotTapped,
    required this.steps,
  });

  final int dotCount;
  final int activeStep;
  final bool? tappingEnabled;
  final Function(int)? onDotTapped;
  final List<EasyStep> steps;

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: activeStep,
      steps: steps,
      activeStepBackgroundColor: AppColors.primary,
      unreachedStepBackgroundColor: AppColors.lightGrey,
      finishedStepBackgroundColor: AppColors.green,
      defaultStepBorderType: BorderType.normal,
      lineStyle:  LineStyle(
        lineType: LineType.normal,
        activeLineColor: AppColors.lightGrey,
        defaultLineColor: AppColors.lightGrey,
        lineLength: MediaQuery.of(context).size.width * 0.6,
      ),
      showLoadingAnimation: false,
      stepRadius: 20,
      internalPadding: 0,
    );
  }
}
