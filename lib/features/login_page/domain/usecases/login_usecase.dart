import 'package:sawara_interview/features/login_page/domain/repository/login_repository.dart';

class LoginUserUsecase {
  final LoginRepository repository;
  LoginUserUsecase({required this.repository});

  Future<bool> call(String email, String password) async {
    try {
      return await repository.loginUserWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }
}
