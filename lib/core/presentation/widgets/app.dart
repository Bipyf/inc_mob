// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:incontrol_flutter/core/domain/entities/user_model.dart';
import 'package:incontrol_flutter/core/presentation/cubit/app_cubit.dart';
import 'package:incontrol_flutter/core/presentation/cubit/app_state.dart';
import 'package:incontrol_flutter/core/presentation/routes/routes.dart';
import 'package:incontrol_flutter/dark_theme.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:incontrol_flutter/light_theme.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

class App extends StatelessWidget {
  const App(
      {Key? key, this.darkTheme, required this.isAuthenticated, this.role})
      : super(key: key);
  final bool? darkTheme;
  final bool isAuthenticated;
  final String? role;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<AppCubit>()..presetThemeType(darkTheme),
      child: ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
        designSize: const Size(375, 812),
        builder: (context, child) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: context.watch<AppCubit>().state.darkTheme
                ? getDarkTheme()
                : lightTheme(),
            title: 'incontrol',
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: const Locale('en', 'EN'),
            home: child,
          ),
        ),
        child: AppView(
          isAuthenticated: isAuthenticated,
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  bool isAuthenticated;

  AppView({
    Key? key,
    required this.isAuthenticated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final currentUser = context.read<AppCubit>();
    // FirebaseAuth.instance.authStateChanges().listen(
    //   (User? user) {
    //     if (user != null)  {
    //       currentUser.onCurrentUserChanged(user);
    //     }
    //   },
    // );
    var currentUser = context.read<AppCubit>();
    var user = _secureStorage.read(key: "idToken");
    if (isAuthenticated) {
      print('user is authed');
      currentUser.onCurrentUserChanged(true);
    }
    return FlowBuilder(
      state: context.select((AppCubit bloc) => bloc.state),
      onGeneratePages: (AppState state, pages) =>
          onGenerateAppViewPages(state, context, pages),
    );
  }
}
