import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_constants.g.dart';

class LoginConstants {
  final txtpromilio = 'Promilo';
  final txtwelcome = 'Hi,Welcome Back';
  final txtsignin = 'Sign In With OTP';
  final txtpasswrod = 'Forget Password';
  final txtSubmit = 'Submit';
  final txtBusiness = 'Business User ?';
  final txtremember = 'Remember Me';
  final txtaccount = 'Don\'t have an account';
  final txtsignup = 'Sign Up';
  final txtloginhera = 'Login  Here';
  final txtagree = 'By continuing, you agree to ';
  final txtpolice = 'Terms of use & Privacy Policy';
}

@riverpod
LoginConstants loginConstants(LoginConstantsRef ref) {
  return LoginConstants();
}
