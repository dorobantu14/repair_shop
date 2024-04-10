import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/main_screen/data/shop_data.dart';
import 'package:repair_shop/main_screen/domain/bloc/shop_bloc.dart';
import 'package:repair_shop/main_screen/domain/repository/shop_repository.dart';

import 'package:repair_shop/main_screen/presentation/main_screen.dart';

void main() {
  runApp(const RepairShop());
}

class RepairShop extends StatelessWidget {
  const RepairShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => ShopBloc(
          ShopRepository(
            ShopData(),
          ),
        ),
        child: const MainScreen(),
      ),
    );
  }
}
