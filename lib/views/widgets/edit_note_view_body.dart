import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/note_cubit/note_cubit.dart';
import 'package:notes/models/note_models.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);

  static String id = "EditNoteView";
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(
              height: 34,
            ),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subtitle ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NoteCubit>(context).fetchNote();
              },
              icon: Icons.check,
              title: "Edit Note",
            ),
            const SizedBox(
              height: 34,
            ),
            CustomTextFormField(
              text: widget.note.title,
              onChanged: (value) {
                title = value;
              },
              hint: "Title",
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              text: widget.note.subTitle,
              onChanged: (value) {
                subtitle = value;
              },
              hint: "SubTitle",
              maxLine: 8,
            )
          ],
        ),
      ),
    );
  }
}
