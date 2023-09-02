import 'package:flutter/material.dart';

class ShiftListItem extends StatelessWidget {
  final String day;
  final String date;
  final String startTime;
  final String endTime;
  final String duration;

  const ShiftListItem({
    required this.day,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.duration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              Text(day),
              const SizedBox(width: 10),
              Text(date),
            ],
          ),
        ),
        subtitle: Row(
          children: [
            const Icon(Icons.arrow_upward, color: Colors.green), // Enter Icon
            const SizedBox(width: 5),
            Text(startTime),
            const SizedBox(width: 20),
            const Icon(Icons.arrow_downward, color: Colors.red), // Leave Icon
            const SizedBox(width: 5),
            Text(endTime),
            const SizedBox(width: 20),
            Text(duration),
          ],
        ),
      ),
    );
  }
}
