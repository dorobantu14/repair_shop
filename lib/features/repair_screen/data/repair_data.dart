import 'package:repair_shop/features/repair_screen/models/repair_service_model.dart';

class RepairData {
  final List<Map<String, dynamic>> services = [
    {
      'name': 'Lorem Ipsum 1',
      'price': 100.0,
      'rating': 4.5,
      'time': 30,
    },
    {
      'name': 'Lorem Ipsum 2',
      'price': 200.0,
      'rating': 4.0,
      'time': 60,
    },
    {
      'name': 'LIpsum 3',
      'price': 300.0,
      'rating': 3.5,
      'time': 90,
    },
    {
      'name': 'LIpsum 5',
      'price': 320.0,
      'rating': 5.0,
      'time': 70,
    },
    {
      'name': 'LIpsm 1',
      'price': 120.0,
      'rating': 4.7,
      'time': 20,
    },
  ];

  List<RepairServiceModel> getServices() {
    return services.map(RepairServiceModel.fromJson).toList();
  }
}
