import 'package:chatapp2/notes/models/notes_model.dart';

abstract class NotesStatus {}

class NotesInitialStutus extends NotesStatus {}
//add

class AddNotesLoading extends NotesStatus {}

class AddNotesSuccess extends NotesStatus {}

class AddNotesError extends NotesStatus {
  final String error;
  AddNotesError(this.error);
}

//delete
class DeleteNotesLoading extends NotesStatus {}

class DeleteNotesSuccess extends NotesStatus {}

class DeleteNotesError extends NotesStatus {
  final String error;
  DeleteNotesError(this.error);
}

//update
class UpdateNotesLoading extends NotesStatus {}

class UpdateNotesSuccess extends NotesStatus {}

class UpdateNotesError extends NotesStatus {
  final String error;
  UpdateNotesError(this.error);
}

//get
class GetNotesLoading extends NotesStatus {}

class GetNoteSuccess extends NotesStatus {
  final List<NotesModel> notes;
  GetNoteSuccess(this.notes);
}

class GetNoteError extends NotesStatus {
  final String error;
  GetNoteError(this.error);
}

class GetNotesStreamLoading extends NotesStatus {
 
}

class GetNotesStreamSuccess extends NotesStatus {
  final List<NotesModel> notes;
  GetNotesStreamSuccess(this.notes);
}

class GetNotesStreamError extends NotesStatus {
   final String error;
  GetNotesStreamError(this.error);
}
