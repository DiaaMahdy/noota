import 'package:flutter/material.dart';
import 'package:noota/widgets/custom_note_item.dart';

class NotesBuilder extends StatelessWidget {
  const NotesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              child: NoteItem(),
            );
          }),
    );
  }
}
