import 'package:flutter/material.dart';

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({
    required this.icon,
    super.key,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
