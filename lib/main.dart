import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubit/note_cubit/note_cubit.dart';

import 'package:notes/models/note_models.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/notes_views.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';

import 'constant.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: MaterialApp(
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
      ),
    );
  }
}
