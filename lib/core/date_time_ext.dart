import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get formattedMonth => DateFormat('MMMM').format(this);
}
