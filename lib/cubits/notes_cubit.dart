import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:noota/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<AddNoteState> {
  NotesCubit(super.initialState);
  addNote(NoteModel note) {}
}
