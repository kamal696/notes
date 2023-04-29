import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubit/note_cubit/note_cubit.dart';
import 'package:notes/models/note_models.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});
  // final List colorsItem = const [
  //   Colors.red,
  //   Colors.yellow,
  //   Colors.blue,
  //   Colors.green
  // ];
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: BlocConsumer<NoteCubit, NoteState>(
          listener: (context, state) {
            if (state is NoteSucsses) {
              BlocProvider.of<NoteCubit>(context).fetchNote();
            } else if (state is NoteFailure) {
              print("failure ${state.errorMassege}");
            }
          },
          builder: (context, state) {
            return ListView.builder(
              itemCount: ,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: CustomNoteItem(),
                  );
                });
          },
        ),
      ),
    );
  }
}
