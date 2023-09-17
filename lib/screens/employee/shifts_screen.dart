import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:timehut_mobile/app_registry.dart';
import 'package:timehut_mobile/models/responses/paginated_response.dart';
import 'package:timehut_mobile/models/shift.dart';
import 'package:timehut_mobile/widgets/app_base_scaffold.dart';
import 'package:timehut_mobile/widgets/shift_list_item.dart';

@RoutePage()
class ShiftsScreen extends StatefulWidget {
  const ShiftsScreen({super.key});

  @override
  State<ShiftsScreen> createState() => _ShiftsScreenState();
}

class _ShiftsScreenState extends State<ShiftsScreen> {
  final dio = AppRegistry.i.dio;

  PaginatedResponse<Shift>? shifts;

  Future<void> fetchShifts() async {
    try {
      final res = await dio.get('/shifts');
      if (res.statusCode != 200) return;
      final response = PaginatedResponse<Shift>.fromJson(
          res.data, (shift) => Shift.fromJson(shift as Map<String, dynamic>));
      shifts = response;
      setState(() {});
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Се случи грешка!',
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    fetchShifts();
  }

  @override
  Widget build(BuildContext context) {
    return AppBaseScaffold(
      child: Expanded(
        child: shifts == null
            ? const SizedBox.shrink()
            : ListView.builder(
                itemCount: shifts!.data.length,
                itemBuilder: (BuildContext context, int index) {
                  final shift = shifts!.data[index];
                  return ShiftListItem(
                    day: shift.day,
                    date: shift.date,
                    startTime: shift.startTime,
                    endTime: shift.endTime,
                    duration: shift.duration,
                  );
                },
              ),
      ),
    );
  }
}
