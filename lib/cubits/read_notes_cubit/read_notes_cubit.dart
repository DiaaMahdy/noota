import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noota/constants.dart';
import 'package:noota/models/note_model.dart';

part 'read_notes_states.dart';

class ReadNotesCubit extends Cubit<ReadNoteState> {
  ReadNotesCubit() : super(ReadNoteInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
