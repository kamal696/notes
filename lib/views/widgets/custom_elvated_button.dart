import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomELvatedButton extends StatelessWidget {
  const CustomELvatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
        ),
        onPressed: () {},
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
