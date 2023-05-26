import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GoogleAppleSignIn extends StatelessWidget {
  final void Function()? onTapGoogle;
  final void Function()? onTapApple;

  const GoogleAppleSignIn({
    Key? key,
    required this.onTapGoogle,
    this.onTapApple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(8.w),
          child: GestureDetector(
              onTap: onTapGoogle,
              child: SvgPicture.asset("assets/icons/google.svg")),
        ),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: GestureDetector(
              onTap: Platform.isIOS ? onTapApple : null,
              child: SvgPicture.asset("assets/icons/apple.svg")),
        ),
      ],
    );
  }
}
