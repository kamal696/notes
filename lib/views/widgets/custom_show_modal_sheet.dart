import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubit/add_not_cubit/add_note_cubit.dart';
import 'package:notes/views/widgets/body_bottom_sheet.dart';

class CustomAddNoteBottomSheet extends StatelessWidget {
  const CustomAddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSucsses) {
          Navigator.pop(context);
        } else if (state is AddNoteFailure) {
          print("failuer ${state.errorMassege}");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: const CustomBodyNoteBottomSheet());
      },
    );
  }
}
