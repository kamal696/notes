import 'package:flutter/material.dart';
import 'package:notes/views/notes_views_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 28,
            )),
      ),
    );
  }
}
