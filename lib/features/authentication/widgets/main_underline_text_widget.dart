import 'package:flutter/material.dart';

class MainAndUnderlineTextWidget extends StatelessWidget {
  final void Function()? onTap;
  final String mainText;
  final String underlinedText;
  const MainAndUnderlineTextWidget({
    Key? key,
    this.onTap,
    required this.mainText,
    required this.underlinedText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(mainText,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
        TextButton(
          onPressed: onTap,
          child: Text(
            underlinedText,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
      ],
    );
  }
}
