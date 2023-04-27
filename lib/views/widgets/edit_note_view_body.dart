import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  static String id = "EditNoteView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            CustomAppBar(
              icon: Icons.check,
              title: "Edit Note",
            ),
            SizedBox(
              height: 34,
            ),
            CustomTextFormField(hint: "Title"),
            SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              hint: "Contain",
              maxLine: 8,
            )
          ],
        ),
      ),
    );
  }
}
