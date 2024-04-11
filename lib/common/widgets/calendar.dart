import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:repair_shop/core/core.dart';
import 'package:repair_shop/features/main_screen/models/calendar_model.dart';
import 'package:repair_shop/features/main_screen/models/day_model.dart';
import 'package:repair_shop/features/main_screen/models/occupied_slots_model.dart';
import 'package:repair_shop/features/main_screen/models/week_model.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    required this.occupiedSlots,
    required this.onSlotSelected,
    super.key,
  });

  final List<OccupiedSlotsModel> occupiedSlots;
  final void Function(OccupiedSlotsModel) onSlotSelected;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final currentDate = DateTime.now();
  int currentMonth = DateTime.now().month;
  late CalendarModel calendar;
  late List<String> timeSlots;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _initCalendar();
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
            children: calendar.weeks
                .map(
                  (week) => _buildCalendar(week.days),
                )
                .toList(),
            onPageChanged: (index) {
              final month = calendar.weeks[index].days.first.month;
              setState(() {
                currentMonth = int.parse(month);
              });
            },
          ),
        ),
      ],
    );
  }

  void _initCalendar() {
    timeSlots = _getTimeSlots();
    calendar = _generateCalendar(currentDate.year, currentMonth);
    _controller = PageController(
      initialPage: calendar.weeks.indexWhere(
        (element) => element.days.any(
          (day) =>
              day.dayDate == currentDate.day.toString() &&
              day.month == currentMonth.toString(),
        ),
      ),
    );
  }

  Widget _buildCalendar(List<DayModel> days) {
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

  CalendarModel _generateCalendar(int year, int month) {
    final days = <DayModel>[];
    var currentDate = DateTime(year);
    while (currentDate.year == year) {
      final dayName = DateFormat('EEEE').format(currentDate);
      final dayDate = DateFormat('dd').format(currentDate);
      final month = DateFormat('M').format(currentDate);
      days.add(
        DayModel.fromJson({
          'dayName': dayName.substring(0, 3),
          'dayDate': dayDate,
          'month': month,
          'year': year.toString(),
        }),
      );
      currentDate = currentDate.add(const Duration(days: 1));
    }

    final slicedDays = days.slices(7).toList();
    final weeks = <WeekModel>[];
    for (final week in slicedDays) {
      weeks.add(WeekModel(days: week));
    }
    return CalendarModel(weeks: weeks);
  }
}

class TimeSlot extends StatelessWidget {
  const TimeSlot({
    required this.time,
    required this.isSlotOccupied,
    required this.isPastTime,
    super.key,
    this.onTap,
  });

  final String time;
  final GestureTapCallback? onTap;
  final bool isSlotOccupied;
  final bool isPastTime;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: GestureDetector(
        onTap: isSlotOccupied || isPastTime ? null : onTap,
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
    required this.onTap,
    super.key,
  });

  final DateTime currentDate;
  final List<String> timeSlots;
  final int currentMonth;
  final List<DayModel> days;
  final void Function(OccupiedSlotsModel) onTap;
  final List<OccupiedSlotsModel> occupiedSlots;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: days
          .map(
            (day) => DecoratedBox(
              decoration: BoxDecoration(
                color: day.year == currentDate.year.toString() &&
                        day.month == currentDate.month.toString() &&
                        day.dayDate == currentDate.day.toString()
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

  List<Widget> _buildCalendarBody(List<String> times, DayModel day) {
    final columns = <Widget>[
      Text(
        day.dayName,
        style: TextStyles.normalGreyTextStyle,
      ),
      Text(
        day.dayDate,
        style: TextStyles.blackBoldTextStyle.copyWith(fontSize: 20),
      ),
    ];

    for (final time in times) {
      columns.add(
        TimeSlot(
          time: time,
          onTap: () {
            final occupiedSlot = OccupiedSlotsModel(
              dayDate: day.dayDate,
              month: day.month,
              time: time,
            );
            onTap(occupiedSlot);
          },
          isSlotOccupied: occupiedSlots.any(
            (element) =>
                element.dayDate == day.dayDate &&
                element.month == day.month &&
                element.time == time,
          ),
          isPastTime: isPastTime(day, time),
        ),
      );
    }
    return columns;
  }

  bool isPastTime(DayModel day, String time) {
    final currentTime = DateTime.now();
    final selectedTime = DateTime(
      int.parse(day.year),
      int.parse(day.month),
      int.parse(day.dayDate),
    );
    return currentTime.isAfter(selectedTime);
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

  DateTime get currentDate => DateTime.now();

  DateTime get currentMonthDateTime => DateTime(
        currentDate.year,
        currentMonth,
      );

  DateTime get nextMonthDateTime => DateTime(
        currentDate.year,
        currentMonth + 1,
      );

  String get yearString => currentDate.year.toString();

  @override
  Widget build(BuildContext context) {
    final calendarHeaderText = '${currentMonthDateTime.formattedMonth} - '
        '${nextMonthDateTime.formattedMonth} '
        '$yearString';
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
          Text(calendarHeaderText, style: TextStyles.blackBoldTextStyle),
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
}
