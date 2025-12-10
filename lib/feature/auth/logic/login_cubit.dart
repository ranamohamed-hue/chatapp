import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chatapp2/feature/auth/logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  //لو المستخدم مسجل قبل كدا
  void setsigninnActive() {
    emit(LoginTabChange(isLogin: true));
  }

  //لو مش مسجل قبل كدا
  void setsignupActive() {
    emit(LoginTabChange(isLogin: false));
  }

  //للذهاب الي صفحة التحقق
  void gotoVerificationScreen() {
    emit(GoToVerificationScreen());
  }

  //للذهاب الي الصفحة الرئيسية
  void gotoHomeScreen() {
    emit(GoToHomeScreen());
  }
}
