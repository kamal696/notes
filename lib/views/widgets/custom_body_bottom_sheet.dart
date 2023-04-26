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
      child: Column(
        children: [
          CustomTextFormField(
            title: "Title",
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          ),
          SizedBox(
            height: 18,
          ),
          CustomTextFormField(
            title: "Content",
            padding: EdgeInsets.symmetric(vertical: 75, horizontal: 12),
          ),
          SizedBox(
            height: 75,
          ),
          CustomELvatedButton()
        ],
      ),
    );
  }
}
