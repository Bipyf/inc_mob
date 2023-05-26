import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Agreement extends StatelessWidget {
  const Agreement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: AppLocalizations.of(context)!.agreement,
            style: Theme.of(context).textTheme.headline6,
          ),
          TextSpan(
            text: ' ' + AppLocalizations.of(context)!.termsAndConditions,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(
            text: ' ' + AppLocalizations.of(context)!.and,
            style: Theme.of(context).textTheme.headline6,
          ),
          TextSpan(
            text: ' ' + AppLocalizations.of(context)!.privacyPolicy,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
        style: TextStyle(
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
