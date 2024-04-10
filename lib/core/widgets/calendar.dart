import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/main_screen/models/occupied_slots_model.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    required this.occupiedSlots,
    super.key,
    this.onSlotSelected,
  });

  final List<OccupiedSlotsModel> occupiedSlots;
  final GestureTapCallback? onSlotSelected;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final currentDate = DateTime.now();
  int currentMonth = DateTime.now().month;
  late List<List<Map<String, String>>> calendar;
  late List<String> timeSlots;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    timeSlots = _getTimeSlots();
    calendar =
        _generateCalendar(currentDate.year, currentMonth).slices(7).toList();
    _controller = PageController(
      initialPage: calendar.indexWhere(
        (element) => element.any(
          (day) =>
              day['dayDate'] == currentDate.day.toString() &&
              day['month'] == currentMonth.toString(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarHeader(
          currentMonth: currentMonth,
          pageController: _controller,
        ),
        Expanded(
          child: PageView(
            controller: _controller,
            children: calendar.map(_buildCalendar).toList(),
            onPageChanged: (index) {
              final day = calendar[index].first;
              setState(() {
                currentMonth = int.parse(day['month']!);
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCalendar(List<Map<String, String>> days) {
    return Column(
      children: [
        ColoredBox(
          color: AppColors.white,
          child: CalendarBody(
            currentDate: currentDate,
            timeSlots: timeSlots,
            currentMonth: currentMonth,
            days: days,
            onTap: widget.onSlotSelected,
            occupiedSlots: widget.occupiedSlots,
          ),
        ),
      ],
    );
  }

  List<String> _getTimeSlots() {
    final times = <String>[];
    for (var i = 8; i <= 16; i++) {
      if (i >= 12) {
        times.add('$i PM');
        continue;
      }
      times.add('$i AM');
    }
    return times;
  }

  List<Map<String, String>> _generateCalendar(int year, int month) {
    final calendar = <Map<String, String>>[];
    var currentDate = DateTime(year);
    while (currentDate.year == year) {
      final dayName = DateFormat('EEEE').format(currentDate); // Day name
      final dayDate = DateFormat('dd').format(currentDate); // Day date
      final month = DateFormat('M').format(currentDate); // Month
      calendar.add({
        'dayName': dayName.substring(0, 3),
        'dayDate': dayDate,
        'month': month,
        'year': year.toString(),
      });
      currentDate = currentDate.add(const Duration(days: 1));
    }
    return calendar;
  }
}

class TimeSlot extends StatelessWidget {
  const TimeSlot({
    required this.time,
    required this.isSlotOccupied,
    super.key,
    this.onTap,
  });

  final String time;
  final GestureTapCallback? onTap;
  final bool isSlotOccupied;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: 36,
          decoration: BoxDecoration(
            border: Border.all(
              color: isSlotOccupied
                  ? AppColors.lightGrey.withOpacity(0.2)
                  : AppColors.green,
            ),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.center,
          child: Text(
            time,
            style: isSlotOccupied
                ? TextStyles.smallBoldGreyTextStyle
                : TextStyles.blackBoldButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

class CalendarBody extends StatelessWidget {
  const CalendarBody({
    required this.currentDate,
    required this.timeSlots,
    required this.currentMonth,
    required this.days,
    required this.occupiedSlots,
    super.key,
    this.onTap,
  });

  final DateTime currentDate;
  final List<String> timeSlots;
  final int currentMonth;
  final List<Map<String, String>> days;
  final GestureTapCallback? onTap;
  final List<OccupiedSlotsModel> occupiedSlots;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: days
          .map(
            (day) => DecoratedBox(
              decoration: BoxDecoration(
                color: day['year'] == currentDate.year.toString() &&
                        day['month'] == currentMonth.toString() &&
                        day['dayDate'] == currentDate.day.toString()
                    ? AppColors.green.withOpacity(0.1)
                    : AppColors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildCalendarBody(timeSlots, day),
              ),
            ),
          )
          .toList(),
    );
  }

  List<Widget> _buildCalendarBody(
    List<String> times,
    Map<String, dynamic> day,
  ) {
    final columns = <Widget>[
      Text(
        day['dayName'].toString(),
        style: TextStyles.normalGreyTextStyle,
      ),
      Text(
        day['dayDate'].toString(),
        style: TextStyles.blackBoldTextStyle.copyWith(fontSize: 20),
      ),
    ];

    for (final time in times) {
      columns.add(
        TimeSlot(
          time: time,
          onTap: onTap,
          isSlotOccupied: occupiedSlots.any(
            (element) =>
                element.dayDate == day['dayDate'] &&
                element.month == day['month'] &&
                element.time == time,
          ),
        ),
      );
    }
    return columns;
  }
}

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({
    required this.currentMonth,
    required this.pageController,
    super.key,
  });

  final int currentMonth;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Spacer(),
          Text(
            '$currentMonthString - $nextMonthString $yearString',
            style: TextStyles.blackBoldTextStyle,
          ),
          const Spacer(),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.calendar_today, size: 16),
              ),
              GestureDetector(
                child: const Icon(Icons.arrow_back_ios, size: 16),
                onTap: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              GestureDetector(
                child: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  DateTime get currentDate => DateTime.now();

  String get currentMonthString => DateFormat('MMMM').format(
        DateTime(
          currentDate.year,
          currentMonth,
        ),
      );

  String get nextMonthString => DateFormat('MMMM').format(
        DateTime(
          currentDate.year,
          currentMonth + 1,
        ),
      );

  String get yearString => currentDate.year.toString();
}
