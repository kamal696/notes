import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constant.dart';
import 'package:notes/models/note_models.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notes;
  fetchNote() {
    var note = Hive.box<NoteModel>(kNotesBox);

    notes = note.values.toList();
  }
}
