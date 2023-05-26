import 'package:incontrol_flutter/core/config/repository_config.dart';
import 'package:incontrol_flutter/core/data/network/api/constant/endpoints.dart';
import 'package:incontrol_flutter/core/data/network/api/services/dio_service.dart';
import 'package:incontrol_flutter/core/data/network/dio_exception.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:the_apple_sign_in/the_apple_sign_in.dart';

abstract class AuthenticationRepository {
  Future<dynamic> loginWithEmailAndPassword(
      {required String email, required String password});

  Future<void> signOut();

  Future<void> signInWithGoogle();

  Future<void> signInWithApple();

  Future<void> signUp(
      {required String email,
      required String password,
      required String fullName});

  User? get user;
}

@Singleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required this.firebaseAuth,
    required this.repositoryConfig,
    required this.dioService,
  });

  final firebase_auth.FirebaseAuth firebaseAuth;
  final RepositoryConfig repositoryConfig;
  final DioService dioService;
  final storage = const FlutterSecureStorage();

  @override
  User? get user => firebaseAuth.currentUser;

  @override
  Future<void> signOut() async {
    try {
      await storage.deleteAll();
      
    } catch (_) {}
  }

  @override
  Future<dynamic> loginWithEmailAndPassword(
      {required String email, required String password}) async {
      try{final data = {'username': email, 'password':password};
      print(data);
       Response response = await dioService.sendToApi(path: Endpoints.login, data: data);
       print(response.toString());
      if(response.data['msg'].toString()!="Success") {
      return 'error';
      }
            return response;

      
     print('coooool');}catch(e){
      return e.toString();
     }
  }

  @override
  Future<void> signInWithGoogle() async {
    print('before google auth');

    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await firebaseAuth.signInWithCredential(credential);
    try {
      await dioService.getFromApi(path: Endpoints.currentUser);
    } catch (e) {
      if (e == "Unauthorized") {
        await dioService.sendToApi(path: Endpoints.user);
      }
    }
  }

  @override
  Future<void> signUp(
      {required String email,
      required String password,
      required String fullName}) async {
    final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    final user = credential.user;
    await user?.updateDisplayName(fullName);
    await user?.reload();
    await dioService.sendToApi(path: Endpoints.user);
    await dioService.getFromApi(path: Endpoints.currentUser);
  }

  Future<void> signInWithApple() async {
    if (!await TheAppleSignIn.isAvailable()) return;
    final result = await TheAppleSignIn.performRequests([
      const AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
    ]);
    print(result.credential?.fullName?.familyName);
    print(result.credential?.fullName?.givenName);
    print(result.credential?.fullName?.middleName);
    print(result.credential?.fullName?.namePrefix);
    print(result.credential?.fullName?.nameSuffix);
    print(result.credential?.fullName?.nickname);
    print(result.credential?.email);

    switch (result.status) {
      case AuthorizationStatus.authorized:
        final appleIdCredential = result.credential!;
        final oAuthProvider = OAuthProvider('apple.com');
        final credential = oAuthProvider.credential(
          idToken: String.fromCharCodes(appleIdCredential.identityToken!),
          accessToken:
              String.fromCharCodes(appleIdCredential.authorizationCode!),
        );
        final userCredential =
            await firebaseAuth.signInWithCredential(credential);
        final fixDisplayNameFromApple = [
          appleIdCredential.fullName?.givenName ?? '',
          appleIdCredential.fullName?.familyName ?? '',
        ].join(' ').trim();
        print(fixDisplayNameFromApple);
        if (fixDisplayNameFromApple != null) {
          final user = userCredential.user;
          await user?.updateDisplayName(fixDisplayNameFromApple);
          await user?.reload();
        }
        break;
      case AuthorizationStatus.error:
        throw PlatformException(
          code: 'ERROR_AUTHORIZATION_DENIED',
          message: result.error.toString(),
        );

      case AuthorizationStatus.cancelled:
        throw PlatformException(
          code: 'ERROR_ABORTED_BY_USER',
          message: 'Sign in aborted by user',
        );
    }
    try {
      await dioService.getFromApi(path: Endpoints.currentUser);
    } catch (e) {
      if (e == "Unauthorized") {
        await dioService.sendToApi(path: Endpoints.user);
      }
    }
  }
}
