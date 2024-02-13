import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sawara_interview/core/exception/login/login_failed_exception.dart';
import 'package:sawara_interview/features/login_page/data/source/login_source.dart';

part 'login_source_impl.g.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final Dio dio = Dio(BaseOptions(baseUrl: "https://apiv2stg.promilo.com"));
  @override
  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    try {
      Response response = await dio.post(
        "/user/oauth/token",
        options: Options(
          headers: {"Authorization": "Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg=="},
        ),
        data: FormData.fromMap({
          "username": email,
          "password": password,
          "grant_type": "password",
        }),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());

        return true;
      } else {
        throw LoginFailedException(
            errorMsg:
                "Login Failed, Status Code ${response.statusCode}. Please try again.");
      }
    } on DioException catch (e) {
      throw LoginFailedException(errorMsg: e.message);
    }
  }
}

@riverpod
LoginDataSource loginDataSource(LoginDataSourceRef ref) {
  return LoginDataSourceImpl();
}
