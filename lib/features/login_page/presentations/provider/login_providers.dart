import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sawara_interview/features/login_page/data/repository/login_repository_impl.dart';
import 'package:sawara_interview/features/login_page/domain/usecases/login_usecase.dart';

part 'login_providers.g.dart';

final enableBtnProvider = StateProvider<bool>((ref) {
  return false;
});

final loadingProvider = StateProvider<bool>((ref) {
  return false;
});

final emailProvider = StateProvider((ref) => '');
final passwordProvider = StateProvider((ref) => '');

// @riverpod
// class Login extends _$Login {
//   @override
//   Future<bool> build(String email, String password) async {
//     final data = await LoginUserUsecase(
//         repository: ref.watch(loginRepositoryProvider))(email, password);
//     return data;
//   }
// }
// @riverpod
// Future<bool> login(LoginRef ref, String email, String password) async {
//   return LoginUserUsecase(repository: ref.watch(loginRepositoryProvider))(
//       email, password);
// }

@riverpod
class Login extends _$Login {
  @override
  void build() {}

  Future<bool> login() async {
    return LoginUserUsecase(repository: ref.read(loginRepositoryProvider))(
      ref.read(emailProvider),
      ref.read(passwordProvider),
    );
  }
}
