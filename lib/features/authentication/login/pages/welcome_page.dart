import 'package:incontrol_flutter/core/presentation/cubit/app_cubit.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/features/authentication/login/pages/login_page.dart';
import 'package:incontrol_flutter/features/authentication/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:incontrol_flutter/features/authentication/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:incontrol_flutter/features/authentication/sign_up/sign_up_page.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomePage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: WelcomePage(),
      );

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignUpCubit>(),
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          return state.map(welcome: (welcomeState) {
            return BlocProvider.value(
              value: context.read<SignUpCubit>(),
              child: Scaffold(
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(AppLocalizations.of(context)!.welcome,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(height: 1.71)),
                          SizedBox(
                            height: 24.h,
                          ),
                          Text(
                            AppLocalizations.of(context)!.introduction,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    height: 1.71,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inverseSurface),
                          ),
                          SizedBox(
                            height: 272.h,
                          ),
                          const Divider(),
                          const NightModeSwitch(),
                          const Divider(),
                          SizedBox(
                            height: 40.h,
                          ),
                          const LoginButton(),
                          SizedBox(
                            height: 16.h,
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }, signup: (signUpState) {
            return const SignUpPage();
          }, login: (loginState) {
            return const LoginPage();
          });
        },
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: 48.h,
          width: 335.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: context.watch<AppCubit>().state.darkTheme
                  ? const Color(0xff2C2C2C)
                  : const Color(0xffF2F2F2)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: (() async {
              await HapticFeedback.mediumImpact();

              context.read<SignUpCubit>().moveToLogin();
            }),
            child: Text(
              AppLocalizations.of(context)!.login,
              style: Theme.of(context).textTheme.button?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          )),
    );
  }
}

class NightModeSwitch extends StatelessWidget {
  const NightModeSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppLocalizations.of(context)!.nigtMode,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontSize: 14.sp)),
        CupertinoSwitch(
            trackColor: Theme.of(context).colorScheme.onTertiary,
            activeColor: Theme.of(context).colorScheme.onBackground,
            value: context.watch<AppCubit>().state.darkTheme,
            onChanged: (newval) {
              context.read<AppCubit>().changeThemeType(newval);
            })
      ],
    );
  }
}
