import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/add_not_cubit/add_note_cubit.dart';
import 'package:notes/models/note_models.dart';
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
            mainAxisSize: MainAxisSize.min,
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
                height: 20,
              ),
              CustomELvatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.black.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
