import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 14),
          child: CustomNoteItem(),
        );
      }),
    );
  }
}
