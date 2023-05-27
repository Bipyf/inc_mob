import 'package:incontrol_flutter/core/presentation/cubit/app_cubit.dart';
import 'package:incontrol_flutter/core/presentation/cubit/navigation_page.dart';
import 'package:incontrol_flutter/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/navigation_verify_button.dart';
import 'package:incontrol_flutter/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:incontrol_flutter/features/profile/presentation/cubit/profile_state.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: ProfilePage(),
      );

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileCubit>(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar:
                const BottomNavigationBarincontrol(currentIndex: 0),
            body: SafeArea(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'My Profile',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Container(
                    height: 600.h,
                    child: state.incontrolLevelsList == null
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : RefreshIndicator(
                            onRefresh: () async {
                              return Future.delayed(const Duration(seconds: 1),
                                  () {
                                context
                                    .read<ProfileCubit>()
                                    .getincontrolList();
                              });
                            },
                            child: SingleChildScrollView(
                              physics: AlwaysScrollableScrollPhysics(),
                              child: Column(
                                children: List.generate(
                                  state.incontrolLevelsList!.length,
                                  (index) => GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 16.h, horizontal: 16.w),
                                      width: 335.w,
                                      height: 300.h,
                                      margin: EdgeInsets.only(
                                          left: 20.w, right: 20.w, top: 20.h),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                            
                                        // color: Theme.of(context)
                                        //     .colorScheme
                                        //     .onPrimary,
                                        borderRadius: BorderRadius.circular(16.r),
                                      ),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                width: 90,
                                                height: 90,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: const Color.fromARGB(
                                                      255, 77, 163, 206),
                                                ),
                                                child: Center(
                                                    child: FittedBox(
                                                  child: Text(
                                                    state
                                                        .incontrolLevelsList![
                                                            index]
                                                        .name,
                                                    style: TextStyle(
                                                        inherit: true,
                                                        color: Colors.white70),
                                                  ),
                                                  fit: BoxFit.fitWidth,
                                                )),
                                              ),
                                              Spacer()
                                            ],
                                          ),
                                          SizedBox(
                                            width: 12.w,
                                          ),
                                          Flexible(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state
                                                          .incontrolLevelsList![
                                                              index]
                                                          .name +
                                                      ' ' +
                                                      state
                                                          .incontrolLevelsList![
                                                              index]
                                                          .surname +
                                                      ' ' +
                                                      state
                                                          .incontrolLevelsList![
                                                              index]
                                                          .lastname,
                                                  style: TextStyle(
                                                    color:
                                                        Theme.of(context).colorScheme.inversePrimary,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 6.h,
                                                ),
                                                Text.rich(
                                                  textAlign: TextAlign.center,
                                                  TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: state
                                                            .incontrolLevelsList![
                                                                index]
                                                            .position,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline6,
                                                      ),
                                                    ],
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: incontrolElevatedButton(
                        isActive: true,
                        label: "Выход",
                        onPressed: () async {

                          context.read<ProfileCubit>().signOut();
                          context
                              .read<AppCubit>()
                              .navigateTo(const NavigationPage.welcomePage());
                        }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
