import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes/cubit/add_not_cubit/add_note_cubit.dart';
import 'package:notes/cubit/note_cubit/note_cubit.dart';
import 'package:notes/views/widgets/body_bottom_sheet.dart';

class CustomAddNoteBottomSheet extends StatelessWidget {
  const CustomAddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSucsses) {
          BlocProvider.of<NoteCubit>(context).fetchNote();
          Navigator.pop(context);
        } else if (state is AddNoteFailure) {
          print("failuer ${state.errorMassege}");
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const CustomBodyNoteBottomSheet());
      },
    );
  }
}
