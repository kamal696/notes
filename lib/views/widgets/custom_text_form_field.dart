import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.title, @required this.padding});
  final Color colorBlue = const Color.fromARGB(255, 41, 228, 235);
  final String title;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: title,
        hintStyle: TextStyle(color: colorBlue),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
