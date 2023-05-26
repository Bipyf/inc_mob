import 'package:incontrol_flutter/core/domain/entities/enums/login_status.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/question_mark_floating_action_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/progress_indicator.dart';
import 'package:incontrol_flutter/features/authentication/widgets/google_apple_signin_widget.dart';
import 'package:incontrol_flutter/features/authentication/widgets/horizontal_or_line_widget.dart';
import 'package:incontrol_flutter/features/authentication/widgets/main_underline_text_widget.dart';
import 'presentation/cubit/sign_up_cubit.dart';
import 'presentation/cubit/sign_up_state.dart';
import 'presentation/widgets/agreement_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'presentation/widgets/sign_up_fields.dart';

class SignUpPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: SignUpPage(),
      );

  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        final _state = state as SignUpStateSignUp;
        return Stack(
          children: [
            Scaffold(
              floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
              floatingActionButton: const QuestionMarkFloatingActionButton(),
              backgroundColor: Theme.of(context).colorScheme.background,
              body: SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 44.h,
                        ),
                        Text(AppLocalizations.of(context)!.signUp,
                            style: Theme.of(context).textTheme.headline1),
                        SizedBox(
                          height: 12.h,
                        ),
                        MainAndUnderlineTextWidget(
                          mainText: AppLocalizations.of(context)!
                              .alreadyHaveAnAccount,
                          underlinedText: AppLocalizations.of(context)!.logIn,
                          onTap: (() =>
                              context.read<SignUpCubit>().moveToLogin()),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        SignUpFields(
                          state: _state,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        incontrolElevatedButton(
                          label: AppLocalizations.of(context)!
                              .signUp
                              .toUpperCase(),
                          onPressed: () async {
                            context.read<SignUpCubit>().signUpWithCredentials();
                            FocusScope.of(context).unfocus();
                          },
                          isActive: _state.email.isNotEmpty &&
                              _state.fullName.isNotEmpty &&
                              _state.password.isNotEmpty &&
                              _state.confirmPassword.isNotEmpty,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        const Agreement(),
                        SizedBox(
                          height: 24.h,
                        ),
                        const HorizontalOrLine(),
                        SizedBox(
                          height: 12.h,
                        ),
                        GoogleAppleSignIn(
                            onTapGoogle: (() => context
                                .read<SignUpCubit>()
                                .loginWithGoogle(false)),
                            onTapApple: (() => context
                                .read<SignUpCubit>()
                                .loginWithApple(false))),
                        SizedBox(
                          height: 30.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (state.status == SignUpStatus.submitting)
              const ProgressIndicatorWithBlur(),
          ],
        );
      },
    );
  }
}
