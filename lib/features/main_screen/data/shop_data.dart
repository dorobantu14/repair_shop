import 'package:repair_shop/features/main_screen/models/occupied_slots_model.dart';
import 'package:repair_shop/features/main_screen/models/product_model.dart';

class ShopData {
  final List<Map<String, dynamic>> shopProducts = [
    {'name': 'Bujii', 'price': 22.95},
    {'name': 'Becuri', 'price': 29.99},
    {'name': 'Baterie', 'price': 109.99},
    {'name': 'Alternator', 'price': 149.99},
    {'name': 'Ulei motor', 'price': 24.99},
    {'name': 'Antigel', 'price': 13.99},
    {'name': 'Manometru presiune', 'price': 5.99},
    {'name': 'Cablu de pornire', 'price': 19.99},
    {'name': 'Huse scaune', 'price': 24.99},
    {'name': 'Covorașe', 'price': 29.99},
    {'name': 'Tamburi', 'price': 59.99},
    {'name': 'Baterie', 'price': 109.99},
    {'name': 'Rulment', 'price': 109.99},
    {'name': 'Esapament', 'price': 99.99},
  ];

  final List<Map<String, String>> occupiedSlots = [
    {
      'dayDate': '6',
      'month': '6',
      'time': '10 AM',
    },
    {
      'dayDate': '6',
      'month': '6',
      'time': '12 PM',
    },
    {
      'dayDate': '17',
      'month': '4',
      'time': '14 PM',
    },
    {
      'dayDate': '17',
      'month': '4',
      'time': '15 PM',
    },
    {
      'dayDate': '20',
      'month': '4',
      'time': '10 PM',
    },
    {
      'dayDate': '16',
      'month': '6',
      'time': '12 PM',
    },
    {
      'dayDate': '10',
      'month': '6',
      'time': '14 PM',
    },
    {
      'dayDate': '12',
      'month': '6',
      'time': '16 PM',
    },
  ];

  List<ProductModel> getProducts() {
    return shopProducts.map(ProductModel.fromJson).toList();
  }

  List<OccupiedSlotsModel> getOccupiedSlots() {
    return occupiedSlots.map(OccupiedSlotsModel.fromJson).toList();
  }
}
