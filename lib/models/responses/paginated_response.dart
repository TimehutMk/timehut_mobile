import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  factory PaginatedResponse({
    required List<T> data,
    required _Links links,
  }) = _PaginatedResponse;

  factory PaginatedResponse.fromJson(Map<String, Object?> json, T Function(Object?) fromJsonT) =>
      _$PaginatedResponseFromJson<T>(json, fromJsonT);
}

@freezed
class _Links with _$_Links {
  factory _Links({
    required String first,
    required String last,
    required String? prev,
    required String? next,
  }) = __Links;

  factory _Links.fromJson(Map<String, Object?> json) => _$_LinksFromJson(json);
}
