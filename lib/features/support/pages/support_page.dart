import 'package:incontrol_flutter/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: SupportPage(),
      );

  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            const BottomNavigationBarincontrol(currentIndex: 1),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: Text(
                      'My requests for repair',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    children: List.generate(
                      1,
                      (index) => GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 20.h),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(24.r)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Center(
                                          child: Text(
                                        "Your request was accepted",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                      )),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/macbook.png',
                                          width: 250.w,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                          'Equipment name: MacBook Air M1 2020'),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Text('Serial number: 01'),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Text(
                                          'Your equipment is being repaired by: Alan Malikov'),
                                      SizedBox(
                                        height: 18.h,
                                      ),
                                      Text(
                                          'Status: Accepted by master'),
                                      Spacer(),
                                      incontrolElevatedButton(
                                          label: 'Close',
                                          onPressed: null,
                                          isActive: true)
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.h, horizontal: 16.w),
                          width: 335.w,
                          height: 175.h,
                          margin: EdgeInsets.only(
                              left: 20.w, right: 20.w, top: 20.h),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
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
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/macbook.png',
                                    width: 130.w,
                                  ),
                                  Spacer()
                                ],
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "MacBook Air M1 2020",
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Waiting for approval",
                                        ),
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 18.h,
                                              width: 18.w,
                                              child: CircularProgressIndicator(
                                                color: Color(0xffEEBF17),
                                                strokeWidth: 2.0,
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: null,
                                              child: Text(
                                                "Cancel",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
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
        ));
  }
}
