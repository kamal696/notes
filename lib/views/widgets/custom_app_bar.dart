import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_icon_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.icon,
    required this.title,
    this.onPressed,
  });
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        CustomIconAppBar(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
