import 'package:flutter/material.dart';
import 'package:noota/widgets/custom_note_item.dart';

class NotesBuilder extends StatelessWidget {
  const NotesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4,
        ),
        child: NoteItem(),
      );
    });
  }
}
