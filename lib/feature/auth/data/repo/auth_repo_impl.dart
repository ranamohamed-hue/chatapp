import 'package:chatapp2/feature/auth/data/models/user_model.dart';
import 'package:chatapp2/feature/auth/data/repo/auth_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  //LOGIN
  Future<Either<String, UserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final creidential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (creidential.user == null) {
        return left("user creation failed");
      }
      final user = UserModel(
        id: creidential.user!.uid,
        name: creidential.user!.displayName ?? "",
        email: creidential.user!.email ?? "",
        phoneNumber: creidential.user!.phoneNumber ?? "",
      );
      return right(user);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  //LOGOUT
  Future<Either<String, void>> logout() async {
    try {
      await firebaseAuth.signOut();
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  //SIGNUP
  Future<Either<String, UserModel>> signUp({
    required UserModel userModel,
    required String password,
  }) async {
    try {
      final creidential = await firebaseAuth.createUserWithEmailAndPassword(
        email: userModel.email,
        password: password,
      );
      if (creidential.user == null) {
        return left("user creation failed");
      }
      return right(userModel);
    } catch (e) {
      return left(e.toString());
    }
  }
}
