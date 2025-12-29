import 'package:chatapp2/feature/auth/data/models/user_model.dart';
import 'package:chatapp2/feature/auth/data/repo/auth_repo.dart';
import 'package:chatapp2/feature/auth/logic/fire_base/Auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;
  AuthCubit(this.authRepo) : super(AuthInitialState());
  //signup
  Future<void> signUp({
    required UserModel userModel,
    required String password,
  }) async {
    emit(SignUpLoadingState());
    final result = await authRepo.signUp(
      userModel: userModel,
      password: password,
    );
    result.fold(
      (error) {
        emit(SignUpErrorState(error));
      },
      (ifRight) {
        emit(SignUpSuccessState(userModel));
      },
    );
  }

//login
Future<void>login({
  required String email,
  required String password
})async{
  emit(LoginLoadingState());
  final result=await authRepo.login(email: email, password: password);
  result.fold((error){
emit(LoginErrorState(error));  }, (UserModel){
  emit(LoginSuccessState(UserModel));
});
}
Future<void>logout()async{
  emit(LogoutLoadingState());
  final result=await authRepo.logout();
  result.fold((error){
    emit(LogoutErrorState(error));
  }, (_){
    emit(LogoutSuccessState());
  });
}
}
