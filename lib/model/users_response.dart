import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suitmedia_km5_test/model/user_model.dart';

part 'users_response.freezed.dart';
part 'users_response.g.dart';

@freezed
class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'data') required List<UserModel> users,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, Object?> json) =>
      _$UsersResponseFromJson(json);
}
