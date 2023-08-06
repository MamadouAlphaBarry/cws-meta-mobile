import 'package:flutter/material.dart';
import 'package:cws_meta_mbile/widgets/cws.table.calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class CWSTableCalendar extends StatelessWidget {
  const CWSTableCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return  TableCalendar(
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
      ),
      calendarStyle: const CalendarStyle(
        outsideDaysVisible: false, // Hide the days of other months
        weekendTextStyle:
        TextStyle(color: Colors.red), // Custom style for weekends
        holidayTextStyle: TextStyle(
            color: Colors.blue), // Custom style for holidays
        defaultTextStyle: TextStyle(
            color: Colors
                .black), // Custom style for default (enabled) days
        selectedTextStyle: TextStyle(
            color: Colors.white,
            shadows: []), // Custom style for the selected day
      ),
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay =
              focusedDay; // update `_focusedDay` here as well
          _showSelectedDateDialog();
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    )
  }
}
