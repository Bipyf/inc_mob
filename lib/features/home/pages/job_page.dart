import 'package:incontrol_flutter/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/modal.dart';
import 'package:incontrol_flutter/features/authentication/widgets/incontrol_text_field.dart';
import 'package:incontrol_flutter/features/authentication/widgets/text_field_label.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/job_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/job_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:incontrol_flutter/features/home/presentation/cubit/home_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/home_state.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: JobPage(),
      );

  const JobPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<JobCubit>(),
      child: BlocBuilder<JobCubit, JobState>(builder: (context, state) {
        return Scaffold(
            bottomNavigationBar:
                const BottomNavigationBarincontrol(currentIndex: 4),
            body: SafeArea(
              child: state.incontrolLevelsList == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : RefreshIndicator(
                      onRefresh: () async {
                        return Future.delayed(const Duration(seconds: 1), () {
                          context.read<JobCubit>().getincontrolList();
                        });
                      },
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Text(
                                  'Workplace',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                              ),
                              Column(
                                children: List.generate(
                                  state.incontrolLevelsList!.length,
                                  (index) => GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 16.h, horizontal: 16.w),
                                      width: 335.w,
                                      height: 126.h,
                                      margin: EdgeInsets.only(
                                          left: 20.w, right: 20.w, top: 20.h),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color(0xFF000000)
                                                  .withOpacity(0.08)
                                                  .withOpacity(0.12),
                                              offset: Offset(1.h, 4.w),
                                              blurRadius: 20.r)
                                        ],

                                        // color: Theme.of(context)
                                        //     .colorScheme
                                        //     .onPrimary,
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                      ),
                                      child: Row(
                                        children: [
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
                                                          .id
                                                          .toString() + " " +
                                                      state
                                                          .incontrolLevelsList![
                                                              index]
                                                          .workplace_name,
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
                                                            .workplace_name,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline4,
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
                            ],
                          ),
                        ),
                      ),
                    ),
            ));
      }),
    );
  }
}
