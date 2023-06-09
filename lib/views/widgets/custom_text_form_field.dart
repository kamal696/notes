import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hint,
      this.maxLine = 1,
      this.onSaved,
      this.onChanged,
      required this.text});

  final String hint;

  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      onChanged: onChanged,
      onSaved: onSaved,
      // if( value?.isEmpty ?? true) : one way to if validate is short jsut
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimaryColor),
        focusedBorder: outLineInputBorder(kPrimaryColor),
        enabledBorder: outLineInputBorder(),
        focusedErrorBorder: outLineInputBorder(Colors.red),
        errorBorder: outLineInputBorder(Colors.red),
      ),
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
