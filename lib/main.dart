import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noota/constants.dart';
import 'package:noota/models/note_model.dart';
import 'package:noota/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const Noota());
}

class Noota extends StatelessWidget {
  const Noota({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
    );
  }
}
