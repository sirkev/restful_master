import 'package:flutter/material.dart';
import 'package:restful_master/note_data.dart';
import 'package:restful_master/note_modify.dart';

class NoteList extends StatelessWidget {
  NoteList({Key? key}) : super(key: key);
  final List note = notes;

  String formatDateTime(DateTime dateTime) {
    return "${dateTime.day}/${dateTime.month}/${dateTime.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Notes")),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => Dismissible(
            key: ValueKey(notes[index].noteID),
            child: ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => NoteModify(noteID: notes[index].noteID,)));
                  },
                  title: Text(
                    "${note[index].noteTitle}",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  subtitle:
                      Text("Last edited on ${formatDateTime(DateTime.utc(22))}"),
                ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return  const NoteModify();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
