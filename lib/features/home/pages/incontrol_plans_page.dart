import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/incontrol_plans_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/incontrol_plans_state.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/home_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/home_state.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class incontrolPlansPage extends StatelessWidget {
  const incontrolPlansPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const incontrolPlansPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              toolbarHeight: 44.h,
              leading: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: SvgPicture.asset("assets/icons/back_arrow.svg",
                      height: 24.h, width: 24.w, fit: BoxFit.scaleDown)),
              title: Text(
                AppLocalizations.of(context)!.plans,
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: SvgPicture.asset(
                    "assets/icons/question_mark.svg",
                  ),
                )
              ],
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.background,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 36.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text('Please choose an option',
                          style: Theme.of(context).textTheme.headline5),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 450.h,
                            child: ListView.builder(
                              itemCount: state.incontrolLevelsList.length,
                              itemBuilder: (context, index) => Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.h, horizontal: 16.w),
                                width: 335.w,
                                height: 86.h,
                                margin: EdgeInsets.only(
                                    left: 20.w, right: 20.w, top: 12.h),
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
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
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Row(
                                  children: [
                                    Column(children: [
                                      SizedBox(
                                        height: 20.h,
                                        width: 20.w,
                                        child: Radio(
                                          value: 0,
                                          groupValue: 1,
                                          onChanged: (value) {},
                                        ),
                                      ),
                                      Spacer()
                                    ]),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state
                                              .incontrolLevelsList[index].toString(),
                                          style: TextStyle(
                                            color: const Color(0xFF0D1526),
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
                                                text: AppLocalizations.of(
                                                        context)!
                                                    .maxWallets,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6,
                                              ),
                                              TextSpan(
                                                  text: state
                                                      .incontrolLevelsList[
                                                          index]
                                                      .id
                                                      .toString(),
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFF0D1526),
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 16.sp,
                                                  ))
                                            ],
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text("€20",
                                            style: TextStyle(
                                              color: const Color(0xFF0D1526),
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16.sp,
                                            )),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Text(
                                          "Details",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ]),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            AppLocalizations.of(context)!.chosen,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Row(
                            children: [
                              Text(
                                "Standart (up to 5 wallets)",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              const Spacer(),
                              Text(
                                "€40,00",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    ?.copyWith(fontSize: 16.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          incontrolElevatedButton(
                              label: 'PROCEED',
                              onPressed: () {},
                              isActive: true),
                          SizedBox(
                            height: 43.h,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
