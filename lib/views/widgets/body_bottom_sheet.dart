import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_elvated_button.dart';

import 'package:notes/views/widgets/custom_text_form_field.dart';

class CustomBodyNoteBottomSheet extends StatelessWidget {
  const CustomBodyNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(
              hint: "Title",
            ),
            SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              hint: "Content",
              maxLine: 6,
            ),
            SizedBox(
              height: 75,
            ),
            CustomELvatedButton()
          ],
        ),
      ),
    );
  }
}
