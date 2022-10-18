import 'package:flutter/material.dart';

class NoteDelete extends StatelessWidget {
  const NoteDelete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Warning"),
      content: const Text("Are you sure you want to delete this note?"),
      actions: [
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Theme.of(context).primaryColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: const Text("Yes")),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop(false);
          },
          child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Theme.of(context).primaryColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const Text("NO")),
        ),
      ],

    );
  }
}
