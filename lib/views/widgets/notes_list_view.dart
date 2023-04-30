import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/note_cubit/note_cubit.dart';
import 'package:notes/models/note_models.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({
    super.key,
  });
  // final List colorsItem = const [
  //   Colors.red,
  //   Colors.yellow,
  //   Colors.blue,
  //   Colors.green
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
                itemCount: notes.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CustomNoteItem(
                      notes: notes[index],
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
