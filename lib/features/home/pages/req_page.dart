import 'package:incontrol_flutter/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/modal.dart';
import 'package:incontrol_flutter/features/authentication/widgets/incontrol_text_field.dart';
import 'package:incontrol_flutter/features/authentication/widgets/text_field_label.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/comp_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/comp_state.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/req_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/req_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:incontrol_flutter/features/home/presentation/cubit/home_cubit.dart';
import 'package:incontrol_flutter/features/home/presentation/cubit/home_state.dart';
import 'package:incontrol_flutter/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

import '../../../core/domain/entities/request_model.dart';

class ReqPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(
        child: ReqPage(),
      );

  const ReqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ReqCubit>(),
      child: BlocBuilder<ReqCubit, ReqState>(builder: (contex, state) {
        return Scaffold(
            bottomNavigationBar:
                const BottomNavigationBarincontrol(currentIndex: 2),
            body: SafeArea(
              child: state.incontrolLevelsList == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : RefreshIndicator(
                      onRefresh: () async {
                        return Future.delayed(const Duration(seconds: 1), () {
                          contex.read<ReqCubit>().getincontrolList();
                        });
                      },
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Text(
                                  'Requests',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                              ),
                              Column(
                                children: List.generate(
                                  state.incontrolLevelsList!.length,
                                  (indexo) => GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24.r),
                                          ),
                                          builder: (BuildContext context) {
                                            return Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: MediaQuery.of(context)
                                                      .viewInsets
                                                      .bottom),
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20.h,
                                                    vertical: 20.h),
                                                decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .background,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              24.r)),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                    Text('Дата создания: ' +
                                                        state
                                                            .incontrolLevelsList![
                                                                indexo]
                                                            .reg_date!),
                                                    SizedBox(
                                                      height: 12.h,
                                                    ),
                                                    Text('Hомер заявки: ' +
                                                        state
                                                            .incontrolLevelsList![
                                                                indexo]
                                                            .id
                                                            .toString()),
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    TextFieldLabel(
                                                        label:
                                                            'Принять заявку?'),
                                                    SizedBox(
                                                      height: 30.h,
                                                    ),
                                                    if (state
                                                            .incontrolLevelsList![
                                                                indexo]
                                                            .req_status ==
                                                        "Принято") ...[
                                                      incontrolElevatedButton(
                                                          label: 'Принять',
                                                          onPressed: () async {
                                                            var data = RequestModel(
                                                                    state
                                                                        .incontrolLevelsList![
                                                                            indexo]
                                                                        .id,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    "В процессе",
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null)
                                                                .toJson();

                                                            contex
                                                                .read<
                                                                    ReqCubit>()
                                                                .put(data);
                                                          },
                                                          isActive: true),
                                                      incontrolElevatedButton(
                                                          topPadding: 10,
                                                          label: "Удалить",
                                                          onPressed: () async {
                                                            var data = RequestModel(
                                                                    state
                                                                        .incontrolLevelsList![
                                                                            indexo]
                                                                        .id,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null)
                                                                .toJson();

                                                            contex
                                                                .read<
                                                                    ReqCubit>()
                                                                .delete(data);
                                                          },
                                                          isActive: true)
                                                    ] else if (state
                                                            .incontrolLevelsList![
                                                                indexo]
                                                            .req_status ==
                                                        "В процессе") ...[
                                                      incontrolElevatedButton(
                                                          label: 'Завершить',
                                                          onPressed: () async {
                                                            var data = RequestModel(
                                                                    state
                                                                        .incontrolLevelsList![
                                                                            indexo]
                                                                        .id,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    "Выполнено",
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null)
                                                                .toJson();

                                                            contex
                                                                .read<
                                                                    ReqCubit>()
                                                                .put(data);
                                                          },
                                                          isActive: true),
                                                      incontrolElevatedButton(
                                                          topPadding: 10,
                                                          label: "Удалить",
                                                          onPressed: () async {
                                                            var data = RequestModel(
                                                                    state
                                                                        .incontrolLevelsList![
                                                                            indexo]
                                                                        .id,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null)
                                                                .toJson();

                                                            contex
                                                                .read<
                                                                    ReqCubit>()
                                                                .delete(data);
                                                          },
                                                          isActive: true)
                                                    ] else if (state
                                                            .incontrolLevelsList![
                                                                indexo]
                                                            .req_status ==
                                                        "Выполнено") ...[
                                                      incontrolElevatedButton(
                                                          topPadding: 10,
                                                          label: "Удалить",
                                                          onPressed: () async {
                                                            var data = RequestModel(
                                                                    state
                                                                        .incontrolLevelsList![
                                                                            indexo]
                                                                        .id,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null,
                                                                    null)
                                                                .toJson();

                                                            contex
                                                                .read<
                                                                    ReqCubit>()
                                                                .delete(data);
                                                          },
                                                          isActive: true)
                                                    ]
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
                                      height: 190.h,
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
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/macbook.jpeg',
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  DateFormat(
                                                          "dd/MM/yyyy | HH:mm")
                                                      .format(DateFormat(
                                                              "yyyy-MM-ddTHH:mm:ssZ")
                                                          .parseUTC(state
                                                              .incontrolLevelsList![
                                                                  indexo]
                                                              .reg_date!)
                                                          .toLocal()),
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xFF0D1526),
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
                                                                indexo]
                                                            .req_status,
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
                                                Text.rich(
                                                  textAlign: TextAlign.center,
                                                  TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: state
                                                            .incontrolLevelsList![
                                                                indexo]
                                                            .req_desc,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline6,
                                                      ),
                                                    ],
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                    ),
                                                  ),
                                                ),
                                                Text.rich(
                                                  textAlign: TextAlign.center,
                                                  TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: state
                                                                    .incontrolLevelsList![
                                                                        indexo]
                                                                    .req_acc_date !=
                                                                null
                                                            ? DateFormat(
                                                                    "dd/MM/yyyy | HH:mm")
                                                                .format(DateFormat(
                                                                        "yyyy-MM-ddTHH:mm:ssZ")
                                                                    .parseUTC(
                                                                      state
                                                                          .incontrolLevelsList![
                                                                              indexo]
                                                                          .req_acc_date!,
                                                                    )
                                                                    .toLocal())
                                                            : '',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline6,
                                                      ),
                                                    ],
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                ),
                                                Text.rich(
                                                  textAlign: TextAlign.center,
                                                  TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: state
                                                                    .incontrolLevelsList![
                                                                        indexo]
                                                                    .req_cmp_date !=
                                                                null
                                                            ? DateFormat(
                                                                    "dd/MM/yyyy | HH:mm")
                                                                .format(DateFormat(
                                                                        "yyyy-MM-ddTHH:mm:ssZ")
                                                                    .parseUTC(
                                                                      state
                                                                          .incontrolLevelsList![
                                                                              indexo]
                                                                          .req_cmp_date!,
                                                                    )
                                                                    .toLocal())
                                                            : '',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline6,
                                                      ),
                                                    ],
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
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
