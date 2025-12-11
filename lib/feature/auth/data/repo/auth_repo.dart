import 'package:chatapp2/feature/auth/data/models/user_model.dart';
abstract class AuthRepo {
 Future<Either<String,UserModel>>signUp({
required UserModel userModel,
required String password,
  });

 Future<Either<String, UserModel>> login({
    required String email,
    required String password,
  });
  
  Future<Either<String, void>> logout();
  
  }