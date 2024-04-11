import 'package:repair_shop/features/repair_screen/data/repair_data.dart';
import 'package:repair_shop/features/repair_screen/models/repair_service_model.dart';

class RepairServiceRepository {
  RepairServiceRepository({required RepairData data}) : _data = data;
  final RepairData _data;

  Future<List<RepairServiceModel>> getRepairServices() async {
    try {
      return _data.getServices();
    } catch (e) {
      throw Exception('Failed to get repair services');
    }
  }
}
