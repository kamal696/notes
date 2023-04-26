import 'package:flutter/material.dart';

class CustomELvatedButton extends StatelessWidget {
  const CustomELvatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 41, 228, 235),
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
