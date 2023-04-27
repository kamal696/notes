import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/views/notes_views.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';

import 'constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EditNoteViewBody.id: (context) => const EditNoteViewBody(),
        NotesViews.id: (context) => const NotesViews()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      initialRoute: NotesViews.id,
    );
  }
}
