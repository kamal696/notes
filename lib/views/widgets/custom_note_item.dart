import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/note_cubit/note_cubit.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';

import '../../models/note_models.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
    required this.notes,
  });
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EditNoteViewBody(
                      note: notes,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              top: 24,
            ),
            child: ListTile(
                title: Text(
                  notes.title,
                  style: const TextStyle(color: Colors.black, fontSize: 28),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    notes.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<NoteCubit>(context).fetchNote();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28, bottom: 24, top: 12),
            child: Text(notes.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 16)),
          )
        ]),
      ),
    );
  }
}
