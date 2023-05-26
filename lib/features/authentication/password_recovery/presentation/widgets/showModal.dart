import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShowModal extends StatelessWidget {
  const ShowModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      color: Theme.of(context).colorScheme.background,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            "assets/icons/modalBackground.png",
            width: ScreenUtil().screenWidth,
          ),
          // ElevatedButton(
          //   child: const Text('Close BottomSheet'),
          //   onPressed: () => Navigator.pop(context),
          // ),
        ],
      ),
    );
  }
}
