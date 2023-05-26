import 'package:incontrol_flutter/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/modal.dart';
import 'package:incontrol_flutter/features/authentication/widgets/incontrol_text_field.dart';
import 'package:incontrol_flutter/features/authentication/widgets/text_field_label.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:incontrol_flutter/features/home/presentation/cubit/home_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/home_state.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: HomePage(),
      );

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        return Scaffold(
            bottomNavigationBar:
                const BottomNavigationBarincontrol(currentIndex: 0),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          'Positions',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      Column(
                        children: List.generate(
                           state.incontrolLevelsList.length,
                          (index) => GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.r),
                                  ),
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.h, vertical: 20.h),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(24.r)),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Center(
                                                child: Text(
                                              "Сообщить о неисправности",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4,
                                            )),
                                            SizedBox(
                                              height: 12.h,
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Text(
                                                'Наименование оборудования: MacBook Air M1 2020'),
                                            SizedBox(
                                              height: 12.h,
                                            ),
                                            Text('Серийный номер: 6969696969'),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            TextFieldLabel(
                                                label: 'Опишите неисправность'),
                                            TextField(
                                              maxLines: null,
                                              
                                            ),
                                            SizedBox(
                                              height: 30.h,
                                            ),
                                            incontrolElevatedButton(
                                                label:
                                                    'Отправить',
                                                onPressed: null,
                                                isActive: true)
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.h, horizontal: 16.w),
                              width: 335.w,
                              height: 126.h,
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
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.incontrolLevelsList[index].id.toString(),
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
                                                text: state.incontrolLevelsList[index].pos,
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
            ));
      }),
    );
  }
}
