import 'package:flutter/material.dart';
import 'package:noota/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
