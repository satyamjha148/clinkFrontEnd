import 'package:flutter_application_1/app/core/local_storage/app_storage.dart';
import 'package:flutter_application_1/app/core/network/api_client.dart';
import 'package:flutter_application_1/app/core/network/endpoints.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'sign_in_repository.dart';

part 'sign_in_repository_impl.g.dart';

class SignInRepositoryImpl extends SignInRepository {
  @override
  Future<bool> login(String name, String pass) async {
    try {
      final dio = ApiClient().init();
      final response = await dio
          .post(Endpoints.login.url, data: {"name": name, "password": pass});

      if (response.statusCode == 200) {
        AppStorage().putToken(response.data['token']);
        return true;
      }
      return false;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}

@riverpod
SignInRepository signInRepository(SignInRepositoryRef ref) =>
    SignInRepositoryImpl();
