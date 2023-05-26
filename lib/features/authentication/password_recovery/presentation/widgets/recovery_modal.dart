import 'package:incontrol_flutter/core/presentation/widgets/buttons/incontrol_elevated_button.dart';
import 'package:incontrol_flutter/core/presentation/widgets/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RecoveryModal extends StatelessWidget {
  const RecoveryModal({super.key, this.image, this.text});
  final String? image;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ShowModal(
      child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.all(Radius.circular(24.r)),
          ),
          child: Column(
            children: [
              image != null
                  ? Stack(children: [
                      SizedBox(
                        height: 148.h,
                        child: Image.asset(
                          image ?? "",
                          scale: 0.8,
                        ),
                      ),
                      Positioned(
                        left: 24.w,
                        top: 84.h,
                        child: Text(text ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: Colors.white)),
                      ),
                    ])
                  : const SizedBox(),
              Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        AppLocalizations.of(context)!.pleaseCheckEmail,
                        style: Theme.of(context).textTheme.headline6,
                      )),
                  SizedBox(
                    height: 24.h,
                  ),
                  incontrolElevatedButton(
                      isActive: true,
                      label: AppLocalizations.of(context)!
                          .backToLogin
                          .toUpperCase(),
                      onPressed: () {}),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
