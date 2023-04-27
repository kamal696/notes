import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_elvated_button.dart';

import 'package:notes/views/widgets/custom_text_form_field.dart';

class CustomBodyNoteBottomSheet extends StatefulWidget {
  const CustomBodyNoteBottomSheet({
    super.key,
  });

  @override
  State<CustomBodyNoteBottomSheet> createState() =>
      _CustomBodyNoteBottomSheetState();
}

class _CustomBodyNoteBottomSheetState extends State<CustomBodyNoteBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              CustomTextFormField(
                onSaved: (value) {
                  title = value;
                },
                hint: "Title",
              ),
              const SizedBox(
                height: 18,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  subTitle = value;
                },
                hint: "Content",
                maxLine: 6,
              ),
              const SizedBox(
                height: 75,
              ),
              CustomELvatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
