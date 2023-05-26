import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionMarkFloatingActionButton extends StatelessWidget {
  const QuestionMarkFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        highlightElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {},
        enableFeedback: true,
        child: SvgPicture.asset('assets/icons/question_mark.svg'));
  }
}
