import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/add_not_cubit/add_note_cubit.dart';
import 'package:notes/models/note_models.dart';
import 'package:notes/views/widgets/custom_elvated_button.dart';

import 'package:notes/views/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

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
  String cdate2 = DateFormat("MMMM, dd, yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 16,
          left: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextFormField(
                text: "",
                onSaved: (value) {
                  title = value;
                },
                hint: "Title",
              ),
              const SizedBox(
                height: 18,
              ),
              CustomTextFormField(
                text: "",
                onSaved: (value) {
                  subTitle = value;
                },
                hint: "Content",
                maxLine: 6,
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomELvatedButton(
                    isLoding: state is AddNoteLoading ? true : false,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        var noteModel = NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            date: cdate2,
                            color: Colors.blue.value);
                        BlocProvider.of<AddNoteCubit>(context)
                            .addNote(noteModel);
                      } else {
                        autoValidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
