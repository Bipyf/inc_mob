import 'package:incontrol_flutter/core/domain/entities/enums/login_status.dart';
import 'package:incontrol_flutter/core/presentation/cubit/app_cubit.dart';
import 'package:incontrol_flutter/core/presentation/cubit/navigation_page.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/question_mark_floating_action_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/progress_indicator.dart';
import 'package:incontrol_flutter/features/authentication/password_recovery/presentation/password_recovery.dart';
import 'package:incontrol_flutter/features/authentication/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:incontrol_flutter/features/authentication/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:incontrol_flutter/features/authentication/widgets/incontrol_text_field.dart';
import 'package:incontrol_flutter/features/authentication/widgets/google_apple_signin_widget.dart';
import 'package:incontrol_flutter/features/authentication/widgets/horizontal_or_line_widget.dart';
import 'package:incontrol_flutter/features/authentication/widgets/main_underline_text_widget.dart';
import 'package:incontrol_flutter/features/authentication/widgets/text_field_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';

final _secureStorage = FlutterSecureStorage();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Page page() => const MaterialPage<void>(
        child: LoginPage(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        final _state = state as SignUpStateLogin;
        return Stack(
          children: [
            Scaffold(
              resizeToAvoidBottomInset: false,
              floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
              floatingActionButton: const QuestionMarkFloatingActionButton(),
              bottomNavigationBar: BottomAppBar(
                color: Colors.transparent,
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 24.h),
                  child: Text(
                    '©InControl',
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 44.h,
                              ),
                              Text(AppLocalizations.of(context)!.logIn,
                                  style: Theme.of(context).textTheme.headline1),
                              SizedBox(
                                height: 12.h,
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              TextFieldLabel(
                                label: "Username",
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              incontrolTextField(
                                  state: state,
                                  hintText: AppLocalizations.of(context)!
                                      .enterYourEmail,
                                  onChanged: context
                                      .read<SignUpCubit>()
                                      .onEmailChanged,
                                  errorText: state.status == LoginStatus.error
                                      ? ""
                                      : null),
                              SizedBox(
                                height: 16.h,
                              ),
                              TextFieldLabel(
                                label: AppLocalizations.of(context)!.password,
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              incontrolTextField(
                                  state: state,
                                  obsecureText: true,
                                  hintText: AppLocalizations.of(context)!
                                      .enterThePassword,
                                  onChanged: context
                                      .read<SignUpCubit>()
                                      .onPasswordChanged,
                                  errorText: state.status == LoginStatus.error
                                      ? state.errorText
                                      : null),
                              SizedBox(
                                height: 40.h,
                              ),
                              incontrolElevatedButton(
                                  label: AppLocalizations.of(context)!.login,
                                  onPressed: () {
                                    context
                                        .read<SignUpCubit>()
                                        .loginWithCredentials();  
                                    FocusScope.of(context).unfocus();
                                    Future.delayed( const Duration(seconds:2), () => {
                                print(state.status),
                                    if (state.status == LoginStatus.success) {
                                    
                                    context.read<AppCubit>().navigateTo(const NavigationPage.profilePage())}
                                  
                                  });
                                  },
                                  isActive: state.email.isNotEmpty &&
                                      state.password.isNotEmpty),
                              SizedBox(
                                height: 40.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (state.status == LoginStatus.submitting)
              const ProgressIndicatorWithBlur(),
          ],
        );
      },
    );
  }
}
