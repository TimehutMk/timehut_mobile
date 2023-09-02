import 'package:flutter/material.dart';
import 'package:timehut_mobile/widgets/base_scaffold.dart';
import 'package:timehut_mobile/widgets/shift_list_item.dart';

class Shifts extends StatelessWidget {
  Shifts({Key? key}) : super(key: key);

  final List<Map<String, String>> shifts = [
    {
      'day': 'Понеделник',
      'date': '2023-09-04',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Вторник',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Среда',
      'date': '2023-09-04',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Четврток',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Петок',
      'date': '2023-09-04',
      'startTime': '08:00 AM',
      'endTime': '04:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Сабота',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Сабота',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Сабота',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Сабота',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Сабота',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
    {
      'day': 'Сабота',
      'date': '2023-09-05',
      'startTime': '09:00 AM',
      'endTime': '05:00 PM',
      'duration': '8 hours',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Expanded(
        child: ListView.builder(
          itemCount: shifts.length,
          itemBuilder: (BuildContext context, int index) {
            final shift = shifts[index];
            return ShiftListItem(
              day: shift['day']!,
              date: shift['date']!,
              startTime: shift['startTime']!,
              endTime: shift['endTime']!,
              duration: shift['duration']!,
            );
          },
        ),
      ),
    );
  }
}
