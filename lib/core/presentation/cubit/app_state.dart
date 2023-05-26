import 'package:incontrol_flutter/core/domain/entities/user_model.dart';
import 'package:incontrol_flutter/core/presentation/cubit/navigation_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@Freezed()
class AppState with _$AppState {
  const factory AppState({
    @Default(NavigationPage.profilePage()) NavigationPage page,
    @Default(false) bool darkTheme,
    bool? currentUser,
    String? role,
  }) = _AppState;
}
