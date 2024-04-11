import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/common/common_widgets.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/main_screen/presentation/bloc/shop_bloc.dart';
import 'package:repair_shop/features/main_screen/presentation/products_screen.dart';
import 'package:repair_shop/features/main_screen/presentation/schedule_screen.dart';
import 'package:repair_shop/features/repair_screen/presentation/repair_service_screen.dart';

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
            _NavigationButtons(
              onBackButtonTapped: activeIndex == 0 ? null : _onBackButtonTapped,
              onNextButtonTapped:
                  activeIndex == steps.length - 1 ? null : _onNextButtonTapped,
              onCreateButtonTapped: activeIndex == steps.length - 1
                  ? _onCreateButtonTapped
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  void _onBackButtonTapped() {
    setState(() {
      activeIndex--;
    });
  }

  void _onNextButtonTapped() {
    final state = context.read<ShopBloc>().state;
    if (state.addedProducts.isEmpty) {
      _showNoProductsSelectedDialog();
    } else {
      setState(() {
        activeIndex++;
      });
    }
  }

  void _onCreateButtonTapped() {
    final state = context.read<ShopBloc>().state;
    if (state.bookedSlot == null) {
      _showNoSlotSelectedDialog();
    } else {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) => RepairServiceScreen(
            bookedSlot:
                '${state.bookedSlot?.dayDate}/${state.bookedSlot?.month}/${DateTime.now().year} ${state.bookedSlot?.time}',
          ),
        ),
      );
    }
  }

  void _showNoSlotSelectedDialog() {
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text(Strings.errorText),
        content: const Text(Strings.noBookedSlotText),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(Strings.okText),
          ),
        ],
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
        customTitle: Text(
          index == activeIndex ? steps[index] : '',
          style: TextStyles.boldGreyTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _showNoProductsSelectedDialog() {
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text(Strings.errorText),
        content: const Text(Strings.noProductsSelectedText),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(Strings.okText),
          ),
        ],
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    this.onTap,
  });

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        Strings.backText,
        style: TextStyles.boldGreyTextStyle,
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({
    this.onTap,
  });

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        Strings.nextText,
        style: TextStyles.boldGreyTextStyle,
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    this.onTap,
  });

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        Strings.createText,
        style: TextStyles.boldGreyTextStyle,
      ),
    );
  }
}

class _NavigationButtons extends StatelessWidget {
  const _NavigationButtons({
    this.onBackButtonTapped,
    this.onNextButtonTapped,
    this.onCreateButtonTapped,
  });

  final GestureTapCallback? onBackButtonTapped;
  final GestureTapCallback? onNextButtonTapped;
  final GestureTapCallback? onCreateButtonTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          if (onBackButtonTapped != null)
            _BackButton(
              onTap: onBackButtonTapped,
            ),
          const Spacer(),
          if (onNextButtonTapped != null)
            _NextButton(
              onTap: onNextButtonTapped,
            ),
          if (onCreateButtonTapped != null)
            _CreateButton(
              onTap: onCreateButtonTapped,
            ),
        ],
      ),
    );
  }
}
