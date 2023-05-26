import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  const UserModel({
    this.role,
    this.token,
  });

  final String? role;
  final String? token;

  static const empty = UserModel(token: '');

  bool get isEmpty => this == UserModel.empty;
  bool get isNotEmpty => this != UserModel.empty;

  
}
