import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomELvatedButton extends StatelessWidget {
  const CustomELvatedButton({
    Key? key,
    this.onPressed,
    this.isLoding = false,
  }) : super(key: key);
  final void Function()? onPressed;
  final bool isLoding;
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
          child: isLoding
              ? const CircularProgressIndicator()
              : const Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                )),
    );
  }
}
