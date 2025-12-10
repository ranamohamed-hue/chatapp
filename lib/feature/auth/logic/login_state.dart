

abstract class LoginState {}
final  class LoginInitial extends LoginState{}
final class LoginLoading extends LoginState{}
final class LoginTabChange extends LoginState{
  final bool isLogin;
  LoginTabChange({required this.isLogin});
}
final class LoginEror extends LoginState{}
final class GoToVerificationScreen extends LoginState{}
final class GoToHomeScreen extends LoginState{}