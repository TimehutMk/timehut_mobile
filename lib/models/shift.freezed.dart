// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shift _$ShiftFromJson(Map<String, dynamic> json) {
  return _Shift.fromJson(json);
}

/// @nodoc
mixin _$Shift {
  int get id => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftCopyWith<Shift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftCopyWith<$Res> {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) then) =
      _$ShiftCopyWithImpl<$Res, Shift>;
  @useResult
  $Res call(
      {int id,
      String day,
      String date,
      String startTime,
      String endTime,
      String duration});
}

/// @nodoc
class _$ShiftCopyWithImpl<$Res, $Val extends Shift>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShiftCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$$_ShiftCopyWith(_$_Shift value, $Res Function(_$_Shift) then) =
      __$$_ShiftCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String day,
      String date,
      String startTime,
      String endTime,
      String duration});
}

/// @nodoc
class __$$_ShiftCopyWithImpl<$Res> extends _$ShiftCopyWithImpl<$Res, _$_Shift>
    implements _$$_ShiftCopyWith<$Res> {
  __$$_ShiftCopyWithImpl(_$_Shift _value, $Res Function(_$_Shift) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? duration = null,
  }) {
    return _then(_$_Shift(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shift implements _Shift {
  _$_Shift(
      {required this.id,
      required this.day,
      required this.date,
      required this.startTime,
      required this.endTime,
      required this.duration});

  factory _$_Shift.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftFromJson(json);

  @override
  final int id;
  @override
  final String day;
  @override
  final String date;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String duration;

  @override
  String toString() {
    return 'Shift(id: $id, day: $day, date: $date, startTime: $startTime, endTime: $endTime, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shift &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, day, date, startTime, endTime, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftCopyWith<_$_Shift> get copyWith =>
      __$$_ShiftCopyWithImpl<_$_Shift>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftToJson(
      this,
    );
  }
}

abstract class _Shift implements Shift {
  factory _Shift(
      {required final int id,
      required final String day,
      required final String date,
      required final String startTime,
      required final String endTime,
      required final String duration}) = _$_Shift;

  factory _Shift.fromJson(Map<String, dynamic> json) = _$_Shift.fromJson;

  @override
  int get id;
  @override
  String get day;
  @override
  String get date;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get duration;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftCopyWith<_$_Shift> get copyWith =>
      throw _privateConstructorUsedError;
}
