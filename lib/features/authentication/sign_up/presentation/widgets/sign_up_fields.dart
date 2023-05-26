import 'package:incontrol_flutter/features/authentication/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:incontrol_flutter/features/authentication/widgets/incontrol_text_field.dart';
import 'package:incontrol_flutter/features/authentication/widgets/text_field_label.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpFields extends StatelessWidget {
  final dynamic state;
  const SignUpFields({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldLabel(label: AppLocalizations.of(context)!.fullName),
        incontrolTextField(
          onChanged: context.read<SignUpCubit>().nameChanged,
          hintText: AppLocalizations.of(context)!.enterYourFullName,
          state: state,
        ),
        SizedBox(
          height: 16.h,
        ),
        TextFieldLabel(label: AppLocalizations.of(context)!.email),
        incontrolTextField(
          state: state,
          onChanged: context.read<SignUpCubit>().emailChanged,
          hintText: AppLocalizations.of(context)!.enterYourEmail,
          errorText: state.status == SignUpStatus.error
              ? state.error == "invalidEmail"
                  ? AppLocalizations.of(context)!.invalidEmail
                  : state.error == "emailAlreadyInUse"
                      ? AppLocalizations.of(context)!.emailAlreadyInUse
                      : null
              : null,
        ),
        SizedBox(
          height: 16.h,
        ),
        TextFieldLabel(label: AppLocalizations.of(context)!.password),
        incontrolTextField(
            state: state,
            obsecureText: true,
            onChanged: context.read<SignUpCubit>().passwordChanged,
            hintText: AppLocalizations.of(context)!.createPassword,
            errorText: state.status == SignUpStatus.error &&
                    state.error == "passwordsNotMatch"
                ? ""
                : null),
        SizedBox(
          height: 16.h,
        ),
        TextFieldLabel(label: AppLocalizations.of(context)!.repeatPassword),
        incontrolTextField(
            state: state,
            onChanged: context.read<SignUpCubit>().confirmPasswordChanged,
            obsecureText: true,
            hintText: AppLocalizations.of(context)!.repeatThePassword,
            errorText: state.status == SignUpStatus.error &&
                    state.error == "passwordsNotMatch"
                ? AppLocalizations.of(context)!.passwordsNotMatch
                : null),
      ],
    );
  }
}
