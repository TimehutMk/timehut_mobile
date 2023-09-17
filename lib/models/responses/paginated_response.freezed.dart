// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedResponse<T> _$PaginatedResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;
  _Links get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<T, $Res> {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value,
          $Res Function(PaginatedResponse<T>) then) =
      _$PaginatedResponseCopyWithImpl<T, $Res, PaginatedResponse<T>>;
  @useResult
  $Res call({List<T> data, _Links links});

  _$LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<T, $Res,
        $Val extends PaginatedResponse<T>>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as _Links,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$LinksCopyWith<$Res> get links {
    return _$LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginatedResponseCopyWith<T, $Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$$_PaginatedResponseCopyWith(_$_PaginatedResponse<T> value,
          $Res Function(_$_PaginatedResponse<T>) then) =
      __$$_PaginatedResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, _Links links});

  @override
  _$LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$_PaginatedResponseCopyWithImpl<T, $Res>
    extends _$PaginatedResponseCopyWithImpl<T, $Res, _$_PaginatedResponse<T>>
    implements _$$_PaginatedResponseCopyWith<T, $Res> {
  __$$_PaginatedResponseCopyWithImpl(_$_PaginatedResponse<T> _value,
      $Res Function(_$_PaginatedResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
  }) {
    return _then(_$_PaginatedResponse<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as _Links,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PaginatedResponse<T> implements _PaginatedResponse<T> {
  _$_PaginatedResponse({required final List<T> data, required this.links})
      : _data = data;

  factory _$_PaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginatedResponseFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final _Links links;

  @override
  String toString() {
    return 'PaginatedResponse<$T>(data: $data, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedResponse<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedResponseCopyWith<T, _$_PaginatedResponse<T>> get copyWith =>
      __$$_PaginatedResponseCopyWithImpl<T, _$_PaginatedResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PaginatedResponseToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedResponse<T> implements PaginatedResponse<T> {
  factory _PaginatedResponse(
      {required final List<T> data,
      required final _Links links}) = _$_PaginatedResponse<T>;

  factory _PaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginatedResponse<T>.fromJson;

  @override
  List<T> get data;
  @override
  _Links get links;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedResponseCopyWith<T, _$_PaginatedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

_Links _$_LinksFromJson(Map<String, dynamic> json) {
  return __Links.fromJson(json);
}

/// @nodoc
mixin _$_Links {
  String get first => throw _privateConstructorUsedError;
  String get last => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LinksCopyWith<_Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) then) =
      __$LinksCopyWithImpl<$Res, _Links>;
  @useResult
  $Res call({String first, String last, String? prev, String? next});
}

/// @nodoc
class __$LinksCopyWithImpl<$Res, $Val extends _Links>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__LinksCopyWith<$Res> implements _$LinksCopyWith<$Res> {
  factory _$$__LinksCopyWith(_$__Links value, $Res Function(_$__Links) then) =
      __$$__LinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String first, String last, String? prev, String? next});
}

/// @nodoc
class __$$__LinksCopyWithImpl<$Res>
    extends __$LinksCopyWithImpl<$Res, _$__Links>
    implements _$$__LinksCopyWith<$Res> {
  __$$__LinksCopyWithImpl(_$__Links _value, $Res Function(_$__Links) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_$__Links(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Links implements __Links {
  _$__Links(
      {required this.first,
      required this.last,
      required this.prev,
      required this.next});

  factory _$__Links.fromJson(Map<String, dynamic> json) =>
      _$$__LinksFromJson(json);

  @override
  final String first;
  @override
  final String last;
  @override
  final String? prev;
  @override
  final String? next;

  @override
  String toString() {
    return '_Links(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Links &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__LinksCopyWith<_$__Links> get copyWith =>
      __$$__LinksCopyWithImpl<_$__Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__LinksToJson(
      this,
    );
  }
}

abstract class __Links implements _Links {
  factory __Links(
      {required final String first,
      required final String last,
      required final String? prev,
      required final String? next}) = _$__Links;

  factory __Links.fromJson(Map<String, dynamic> json) = _$__Links.fromJson;

  @override
  String get first;
  @override
  String get last;
  @override
  String? get prev;
  @override
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$__LinksCopyWith<_$__Links> get copyWith =>
      throw _privateConstructorUsedError;
}
