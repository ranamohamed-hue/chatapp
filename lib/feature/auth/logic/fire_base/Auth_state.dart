import 'package:chatapp2/feature/auth/data/models/user_model.dart';

abstract class AuthState {}

final class AuthInitialState extends AuthState {}

//signup
final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {
  final UserModel userModel;
  SignUpSuccessState(this.userModel);
}

final class SignUpErrorState extends AuthState {
  final String error;
  SignUpErrorState(this.error);
}

//login
final class LoginLoadingState extends AuthState {}

final class LoginSuccessState extends AuthState {
  final UserModel userModel;
  LoginSuccessState(this.userModel);
}

final class LoginErrorState extends AuthState {
  final String error;
  LoginErrorState(this.error);
}

//Logout
final class LogoutLoadingState extends AuthState {}

final class LogoutSuccessState extends AuthState {}

final class LogoutErrorState extends AuthState {
  final String error;
  LogoutErrorState(this.error);
}
