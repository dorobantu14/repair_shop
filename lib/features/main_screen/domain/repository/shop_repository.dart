import 'package:repair_shop/features/main_screen/data/shop_data.dart';
import 'package:repair_shop/features/main_screen/models/occupied_slots_model.dart';
import 'package:repair_shop/features/main_screen/models/product_model.dart';

class ShopRepository {
  ShopRepository(this.shopData);

  final ShopData shopData;

  Future<List<ProductModel>> getProducts() async {
    try {
      return shopData.getProducts();
    } catch (e) {
      throw Exception('Failed to get products');
    }
  }

  Future<List<OccupiedSlotsModel>> getOccupiedSlots() async {
    try {
      return shopData.getOccupiedSlots();
    } catch (e) {
      throw Exception('Failed to get occupied slots');
    }
  }
}
