
import 'package:chatapp2/notes/models/notes_model.dart';
import 'package:dartz/dartz.dart';

abstract class NotesRepo {

  Future<Either<String, List<NotesModel>>> getNotes();

  Future<Either<String, void>> addNote(NotesModel note);

  Future<Either<String, void>> updateNote(NotesModel note);

  Future<Either<String, void>> deleteNote(NotesModel note);
  Stream<Either<String, List<NotesModel>>> notesStream();
 }