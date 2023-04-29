part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLodaing extends NoteState {}

class NoteSucsses extends NoteState {
  final List<NoteModel> listNote;

  NoteSucsses(this.listNote);
}

class NoteFailure extends NoteState {
  final String errorMassege;

  NoteFailure(this.errorMassege);
}
