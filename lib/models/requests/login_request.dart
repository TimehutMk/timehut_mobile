import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    required String email,
    required String password,
    @JsonKey(name: 'device_name') required String deviceName,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, Object?> json) => _$LoginRequestFromJson(json);
}
