abstract class LoginRepository {
  Future<bool> loginUserWithEmailAndPassword(String email, String password);
}
