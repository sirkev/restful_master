class Note {
  String noteID;
  String noteTitle;
  DateTime createdDateTime;
  DateTime lastEditDateTime;

  Note(
  {required this.noteID,
  required this.noteTitle,
  required this.createdDateTime,
  required this.lastEditDateTime});

  String formatDateTime(DateTime dateTime){
    return "${dateTime.day}/${dateTime.month}/${dateTime.year}";
  }
}
