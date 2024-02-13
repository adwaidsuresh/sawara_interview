import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sawara_interview/features/login_page/data/source/login_source.dart';
import 'package:sawara_interview/features/login_page/data/source/login_source_impl.dart';
import 'package:sawara_interview/features/login_page/domain/repository/login_repository.dart';
part 'login_repository_impl.g.dart';

class LoginRepositoryImpl implements LoginRepository {
  late LoginDataSource source;
  LoginRepositoryImpl({required this.source});
  @override
  Future<bool> loginUserWithEmailAndPassword(String email, String password) {
    return source.loginWithEmailAndPassword(email, password);
  }
}

@riverpod
LoginRepository loginRepository(LoginRepositoryRef ref) {
  return LoginRepositoryImpl(source: ref.watch(loginDataSourceProvider));
}
