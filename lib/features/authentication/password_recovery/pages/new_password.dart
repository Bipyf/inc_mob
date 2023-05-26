import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/features/authentication/password_recovery/presentation/cubit/password_recovery_cubit.dart';
import 'package:incontrol_flutter/features/authentication/password_recovery/presentation/cubit/password_recovery_state.dart';
import 'package:incontrol_flutter/features/authentication/widgets/incontrol_text_field.dart';
import 'package:incontrol_flutter/features/authentication/widgets/text_field_label.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                      Text(AppLocalizations.of(context)!.newPassword,
                          style: Theme.of(context).textTheme.headline1),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          Text(AppLocalizations.of(context)!.needMoreHelp,
                              style: Theme.of(context).textTheme.headline6),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              AppLocalizations.of(context)!.contactSupport,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                    decoration: TextDecoration.underline,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      TextFieldLabel(
                          label: AppLocalizations.of(context)!.password),
                      incontrolTextField(
                        obsecureText: true,
                        onChanged: (value) => {
                          context
                              .read<RecoveryPasswordCubit>()
                              .passwordChanged(value),
                        },
                        hintText:
                            AppLocalizations.of(context)!.enterThePassword,
                        state: state,
                      ),
                      TextFieldLabel(
                          label: AppLocalizations.of(context)!.repeatPassword),
                      incontrolTextField(
                        obsecureText: true,
                        onChanged: (value) => {
                          context
                              .read<RecoveryPasswordCubit>()
                              .confirmPasswordChanged(value),
                        },
                        hintText:
                            AppLocalizations.of(context)!.repeatThePassword,
                        state: state,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      incontrolElevatedButton(
                          label: AppLocalizations.of(context)!
                              .updatePassword
                              .toUpperCase(),
                          onPressed: () {},
                          isActive: state.password.isNotEmpty &&
                              state.confirmPassword == state.password),
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
