// import 'package:incontrol_flutter/core/data/repositories/auth_interface.dart';
// import 'package:incontrol_flutter/core/domain/entities/user_model.dart';
// import 'package:firebase_auth/firebase_auth.dart' as auth;
// import 'package:dartz/dartz.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// class AuthRepository implements AuthInterface {
//   final auth.FirebaseAuth _firebaseAuth;
//   AuthRepository({auth.FirebaseAuth? firebaseAuth})
//       : _firebaseAuth = firebaseAuth ?? auth.FirebaseAuth.instance;
//
//   Stream<auth.User?> get user => _firebaseAuth.userChanges();
//
//   @override
//   Future<Either<String, bool>> loginWithEmailAndPassword(
//       {required String email, required String password}) async {
//     try {
//       await _firebaseAuth.signInWithEmailAndPassword(
//           email: email, password: password);
//     } on auth.FirebaseAuthException catch (e) {
//       String errorText = e.message ?? '';
//       return Left(errorText);
//     }
//     return const Right(true);
//   }
//
//   @override
//   Future<void> signOut() async {
//     try {
//       await GoogleSignIn().disconnect();
//       await _firebaseAuth.signOut();
//     } catch (_) {}
//   }
//
//   @override
//   Future<void> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser =
//           await GoogleSignIn(scopes: <String>["email"]).signIn();
//
//       final GoogleSignInAuthentication googleAuth =
//           await googleUser!.authentication;
//
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       await _firebaseAuth.signInWithCredential(credential);
//     } catch (_) {}
//   }
//
//   Future<Either<String, Either<User?, bool>>> signUp(
//       {required String email,
//       required String password,
//       required String fullName}) async {
//     try {
//       final credential = await _firebaseAuth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       final user = credential.user;
//       await user?.updateDisplayName(fullName);
//       await user?.reload();
//       User? latestUser = FirebaseAuth.instance.currentUser;
//       return Right(Left(latestUser));
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'invalid-email') {
//         return const Left("invalidEmail");
//       } else if (e.code == 'email-already-in-use') {
//         return const Left("emailAlreadyInUse");
//       }
//     } catch (e) {
//       print(e);
//       return const Left("Error");
//     }
//     return const Right(Right(true));
//   }
// }
