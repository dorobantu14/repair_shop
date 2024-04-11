import 'package:freezed_annotation/freezed_annotation.dart';

part 'added_product_model.freezed.dart';

@freezed
class AddedProductModel with _$AddedProductModel {
  const factory AddedProductModel({
    required String name,
    required double price,
    required int quantity,
    required double totalPrice,
  }) = _AddedProductModel;
}
