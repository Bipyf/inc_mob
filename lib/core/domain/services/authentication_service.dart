import 'package:incontrol_flutter/core/domain/entities/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationService {
  Stream<bool?> get registerUser;

  Future<Either<String, void>> loginWithEmailAndPassword(
      {required String email, required String password});

  Future<void> signOut();

  Future<Either<String, void>> signInWithGoogle();

  Future<void> signInWithApple();

  Future<Either<String, void>> signUp(
      {required String email,
      required String password,
      required String fullName});

  void dispose();
}
