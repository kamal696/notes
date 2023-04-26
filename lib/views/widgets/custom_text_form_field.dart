import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.title, this.maxLine = 1});

  final String title;

  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: KPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: KPrimaryColor),
          focusedBorder: outLineInputBorder(KPrimaryColor),
          enabledBorder: outLineInputBorder()),
    );
  }

  OutlineInputBorder outLineInputBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
