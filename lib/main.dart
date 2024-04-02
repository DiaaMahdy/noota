import 'package:flutter/material.dart';
import 'package:noota/views/notes_view.dart';

void main() {
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
