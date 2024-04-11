import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/repair_screen/models/repair_service_model.dart';

enum SortingOption {
  rating,
  price,
  time;

  String get name => switch (this) {
        SortingOption.rating => Strings.ratingText,
        SortingOption.price => Strings.priceText,
        SortingOption.time => Strings.timeText,
      };

  int Function(RepairServiceModel, RepairServiceModel) get comparator =>
      switch (this) {
        SortingOption.rating => (a, b) => a.rating.compareTo(b.rating),
        SortingOption.price => (a, b) => a.price.compareTo(b.price),
        SortingOption.time => (a, b) => a.time.compareTo(b.time),
      };
}
