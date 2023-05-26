import 'package:flutter/material.dart';

class incontrolTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? hintText;
  final String? errorText;
  final bool? obsecureText;               
  final dynamic state;

  const incontrolTextField({
    Key? key,
    required this.onChanged,
    this.hintText,
    this.obsecureText,
    required this.state,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          onChanged: onChanged,
          obscureText: obsecureText ?? false,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
          ),
        ),
      ],
    );
  }
}
