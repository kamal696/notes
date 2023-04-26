import 'package:flutter/material.dart';
import 'package:notes/views/notes_views_body.dart';
import 'package:notes/views/widgets/custom_show_modal_sheet.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  context: context,
                  builder: (context) {
                    return const CustomAddNoteBottomSheet();
                  });
            },
            icon: const Icon(
              Icons.add,
              size: 28,
            )),
      ),
    );
  }
}
