import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomELvatedButton extends StatelessWidget {
  const CustomELvatedButton({Key? key, this.onPressed}) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
        ),
        onPressed: onPressed,
        child: const Text(
          "Add",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
