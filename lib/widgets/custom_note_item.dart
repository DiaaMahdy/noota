import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'pray',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Text(
                'pray 5 times',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 26,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 24,
            ),
            child: Text(
              'April2 , 2024',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
