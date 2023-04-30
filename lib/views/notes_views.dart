import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/add_not_cubit/add_note_cubit.dart';
import 'package:notes/cubit/note_cubit/note_cubit.dart';

import 'package:notes/views/widgets/custom_show_modal_sheet.dart';
import 'package:notes/views/widgets/note_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({Key? key}) : super(key: key);
  static String id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                        create: (context) => AddNoteCubit(),
                        child: const CustomAddNoteBottomSheet());
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
