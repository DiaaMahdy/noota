part of 'read_notes_cubit.dart';

@immutable
abstract class ReadNoteState {}

class ReadNoteInitial extends ReadNoteState {}

class NotesSuccess extends ReadNoteState {}
