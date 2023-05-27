import 'dart:async';
import 'package:incontrol_flutter/core/data/repositories/authentication_repository.dart';
import 'package:incontrol_flutter/core/domain/entities/user_model.dart';
import 'package:incontrol_flutter/core/domain/services/authentication_service.dart';
import 'package:incontrol_flutter/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthenticationService)
class AuthenticationServiceImpl implements AuthenticationService {
  AuthenticationServiceImpl(this.authenticationRepository);

  final _registerUserController = StreamController<bool>();
  final AuthenticationRepository authenticationRepository;

  @override
  Stream<bool?> get registerUser => _registerUserController.stream;
  final storage = const FlutterSecureStorage();

  @override
  Future<Either<String, void>> signInWithGoogle() async {
    try {
      print('before in service google auth');
      await authenticationRepository.signInWithGoogle();
      await saveUserTokenToSecureStorage('');
      _registerUserController.sink.add(true);
      return const Right(null);
    } catch (e) {
      print('got exception');
      return Left('Google Sign In failed');
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await authenticationRepository.signOut();

      _registerUserController.sink.add(false);
      
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signInWithApple() async {
    try {
      await authenticationRepository.signInWithApple();
      await saveUserTokenToSecureStorage('');
      _registerUserController.sink.add(true);
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<String, void>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final lol = await authenticationRepository.loginWithEmailAndPassword(
          email: email, password: password);
      
      if(lol.data['msg'].toString() != 'Success')
          {
            return Left('error');
          }
       else {
       
        await saveUserTokenToSecureStorage(lol.data['token']);
        await saveUserRoleToSecureStorage(lol.data['role'], lol.data['id'].toString());
         _registerUserController.sink.add(true);
        return const Right(null);
       }
      


      
    } on FirebaseAuthException catch (e) {
      String errorText = e.message ?? '';
      return Left(errorText);
    } catch (e) {
      String errorText = e.toString();
      return Left(errorText);
    }

    // _registerUserController.sink.sink.add(authenticationRepository.user);
    // response.fold((l) => Left(l), (r) => const Right(null));
    // return const Right(null);
  }

  @override
  Future<Either<String, void>> signUp(
      {required String email,
      required String password,
      required String fullName}) async {
    try {
      await authenticationRepository.signUp(
          email: email, password: password, fullName: fullName);
      await saveUserTokenToSecureStorage('');
     _registerUserController.sink.add(true);
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return const Left("invalidEmail");
      } else if (e.code == 'email-already-in-use') {
        return const Left("emailAlreadyInUse");
      }
    } catch (e) {
      return const Left("Error");
    }
    return const Right(null);
  }

  @override
  @disposeMethod
  void dispose() {
    _registerUserController.close();
  }

  Future<void> saveUserTokenToSecureStorage(String? value) async {
    await storage.write(
        key: 'idToken',
        value: value
        );
  }
  Future<void> saveUserRoleToSecureStorage(String? value1, String? value2) async {
    await storage.write(
        key: 'idRole',
        value: value1
        );
    await storage.write(key: "id", value: value2);
  }
}
