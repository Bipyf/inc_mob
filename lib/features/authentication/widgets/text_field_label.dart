import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldLabel extends StatelessWidget {
  final String label;
  const TextFieldLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, bottom: 6.h),
      child: Text(
        label,
        style: TextStyle(
            fontSize: 12.sp, color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
