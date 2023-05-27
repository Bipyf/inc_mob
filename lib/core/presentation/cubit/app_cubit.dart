import 'dart:async';
import 'package:incontrol_flutter/core/domain/entities/user_model.dart';
import 'package:incontrol_flutter/core/domain/services/authentication_service.dart';
import 'package:incontrol_flutter/core/presentation/cubit/app_state.dart';
import 'package:incontrol_flutter/core/presentation/cubit/navigation_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

final securestorage = FlutterSecureStorage();


@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit({
    required AuthenticationService authenticationService,
  }) : super(const AppState()) {
    userSubscription =
        authenticationService.registerUser.listen(onCurrentUserChanged);
  }

  late StreamSubscription<bool?> userSubscription;
  final role =  securestorage.read(key: "idRole");

  void onCurrentUserChanged(bool? result) {
    print('user now: $result');
  

    emit(
      state.copyWith(
        currentUser: result,
      ),
    );
   print('user after call ${state.currentUser}');
  }

  void navigateTo(NavigationPage routeName) {
    emit(state.copyWith(page: routeName));
  }

  void presetThemeType(bool? darkTheme) {
    if (darkTheme != null) {
      emit(state.copyWith(
        darkTheme: darkTheme,
      ));
    }
  }

  Future<void> changeThemeType(bool darkTheme) async {
    final pref = await SharedPreferences.getInstance();
    pref.setBool('darkTheme', darkTheme);
    emit(state.copyWith(
      darkTheme: darkTheme,
    ));
  }
  
   Future<String?> getID() async {
    var id = await securestorage.read(key: "id");
    return id;
  }


  @override
  Future<void> close() {
    userSubscription.cancel();
    return super.close();
  }
// void updateUser(UserModel user) {
//   emit(state.copyWith(currentUser: user));
// }
//
// void createUser() {
//   emit(state.copyWith(
//       currentUser: UserModel(
//     id: "0",
//     email: "email",
//   )));
// }
}
