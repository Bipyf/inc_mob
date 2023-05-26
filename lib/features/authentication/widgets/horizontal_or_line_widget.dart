import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 16.w),
            child: Divider(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
            ),
          ),
        ),
        Text(
          AppLocalizations.of(context)!.or,
          style: TextStyle(
              fontSize: 14.sp, color: Theme.of(context).colorScheme.onSurface),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.w),
            child: Divider(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
            ),
          ),
        ),
      ],
    );
  }
}
