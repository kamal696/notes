import 'package:flutter/material.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';

import '../models/note_models.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody(note: note);
  }
}
