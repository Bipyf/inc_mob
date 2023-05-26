import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecoveryButton extends StatelessWidget {
  final Gradient? gradient;
  final void Function()? onTap;
  final String label;
  const RecoveryButton({
    Key? key,
    this.gradient,
    this.onTap,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: ScreenUtil().screenWidth,
        height: 48.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(24.r),
          gradient: gradient,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
      ),
    );
  }
}
