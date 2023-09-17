import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift.freezed.dart';
part 'shift.g.dart';

@freezed
class Shift with _$Shift {
  factory Shift({
    required int id,
    required String day,
    required String date,
    required String startTime,
    required String endTime,
    required String duration,
  }) = _Shift;

  factory Shift.fromJson(Map<String, Object?> json) => _$ShiftFromJson(json);
}
