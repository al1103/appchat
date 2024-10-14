import 'package:messanger/auth/domain/auth_repository.dart';
import 'package:messanger/core/infrastructure/datasource/remote/api_service.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_impl.g.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<String> signIn(String username, String password) async {
    return apiService.requestPost(
      '/auth/login',
      {'username': username, 'password': password},
      responseFactory: (json) => pick(json['token']).asStringOrNull() ?? '',
    );
  }

  @override
  Future<String> signUp(
    String username,
    String email,
    String password,
  ) async {
    return apiService.requestPost(
      '/auth/register',
      {
        'username': username,
        'email': email,
        'password': password,
      },
      responseFactory: (json) {
        final data = pick(json, 'data').asMapOrEmpty<String, dynamic>();

        return pick(data, 'token').asStringOrNull() ?? '';
      },
    );
  }
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) =>
    AuthRepositoryImpl(ref.read(apiServiceProvider));
