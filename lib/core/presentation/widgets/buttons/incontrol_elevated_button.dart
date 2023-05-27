import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class incontrolElevatedButton extends StatelessWidget {
  const incontrolElevatedButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.topPadding,
      this.bottomPadding,
      this.leftPadding,
      this.rightPadding,
      required this.isActive})
      : super(key: key);
  final void Function()? onPressed;
  final String label;
  final double? topPadding;
  final double? bottomPadding;
  final double? leftPadding;
  final double? rightPadding;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        // padding: EdgeInsets.fromLTRB(
        //    leftPadding ?? 20.w, topPadding ?? 20.h, rightPadding ?? 20.w, bottomPadding ?? 20.h),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            gradient: isActive
                ? LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.tertiary,
                    ],
                  )
                : null,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            onPressed: (() async {
              HapticFeedback.mediumImpact();
              onPressed!();
            }),
            child: Text(
              label,
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
