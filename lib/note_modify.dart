import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String? noteID;

  const NoteModify({Key? key, this.noteID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(noteID==null ?"Create note": "Edit note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(hintText: "Title"),
            ),
            const SizedBox(
              height: 8,
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Note Content"),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){},
              child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).primaryColor,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: const Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}
