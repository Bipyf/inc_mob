import 'package:incontrol_flutter/features/authentication/password_recovery/presentation/widgets/showModal.dart';
import 'package:incontrol_flutter/features/authentication/widgets/incontrol_text_field.dart';
import 'package:incontrol_flutter/features/authentication/widgets/text_field_label.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'cubit/password_recovery_cubit.dart';
import 'cubit/password_recovery_state.dart';
import 'widgets/sign_up_button.dart';

class PasswordRecovery extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: PasswordRecovery(),
      );
  const PasswordRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RecoveryPasswordCubit>(),
      child: BlocBuilder<RecoveryPasswordCubit, RecoveryPasswordState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              toolbarHeight: 44.h,
              leading: IconButton(
                icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/question_mark.svg"))
              ],
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.background,
            ),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.recoverPassword,
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.needMoreHelp,
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Theme.of(context).colorScheme.onSurface),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              AppLocalizations.of(context)!.contactSupport,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16.sp,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      TextFieldLabel(
                          label: AppLocalizations.of(context)!.email),
                      incontrolTextField(
                        onChanged: (value) => {
                          context
                              .read<RecoveryPasswordCubit>()
                              .emailChanged(value),
                        },
                        hintText: AppLocalizations.of(context)!.enterYourEmail,
                        state: state,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      RecoveryButton(
                        label:
                            AppLocalizations.of(context)!.proceed.toUpperCase(),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return ShowModal();
                            },
                          );
                        },
                        gradient: state.email.isNotEmpty
                            ? LinearGradient(
                                colors: [
                                  Theme.of(context).colorScheme.primary,
                                  Theme.of(context).colorScheme.secondary,
                                  Theme.of(context).colorScheme.tertiary,
                                ],
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
