// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shift _$$_ShiftFromJson(Map<String, dynamic> json) => _$_Shift(
      id: json['id'] as int,
      day: json['day'] as String,
      date: json['date'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$$_ShiftToJson(_$_Shift instance) => <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'duration': instance.duration,
    };
