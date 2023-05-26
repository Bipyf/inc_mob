import 'dart:io';

import 'package:incontrol_flutter/core/presentation/cubit/app_cubit.dart';
import 'package:incontrol_flutter/core/presentation/cubit/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavVerifyButton extends StatelessWidget {
  const NavVerifyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Platform.isIOS ? 30.h : 40.h),
      child: FloatingActionButton(

        // highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        elevation: 0,
        onPressed: () => context
            .read<AppCubit>()
            .navigateTo(const NavigationPage.verificationPage()),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient:  LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
            ),
            color: Theme.of(context).colorScheme.onSurface,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/check.svg',
              width: 20.h,
            ),
          ),
        ),
      ),
    );
  }
}
