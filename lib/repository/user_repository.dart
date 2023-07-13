import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:suitmedia_km5_test/model/users_response.dart';

import 'dio_provider.dart';

part 'user_repository.g.dart';

class UserRepository {
  final Dio dio;

  UserRepository({required this.dio});

  Future<UsersResponse> getUsers({
    int page = 1,
  }) async {
    final response = await dio.get(
      '/users',
      queryParameters: {
        'page': page,
      },
    );
    return UsersResponse.fromJson(response.data);
  }
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) =>
    UserRepository(dio: ref.watch(dioProvider));
