import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/cubits/notes_cubit.dart';
import 'package:noota/widgets/add_note_form.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: BlocConsumer<NotesCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                log('failure ${state.errMessage}');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return const AddNoteForm();
            },
          ),
        ),
      ),
    );
  }
}
