import 'package:chatapp2/notes/logic/notes_status.dart';
import 'package:chatapp2/notes/models/notes_model.dart';
import 'package:chatapp2/notes/rebo/notes_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesCubit extends Cubit<NotesStatus> {
  final NotesRepo notesRepo;
  NotesCubit(this.notesRepo) : super(NotesInitialStutus());

  //add
  Future<void> addNote(NotesModel note) async {
    emit(AddNotesLoading());
    final result = await notesRepo.addNote(note);
    result.fold(
      (error) {
        emit(AddNotesError(error));
      },
      (_) {
        emit(AddNotesSuccess());
      },
    );
  }

  //delete
  Future<void> deleteNote(NotesModel note) async {
    emit(DeleteNotesLoading());
    final result = await notesRepo.deleteNote(note);
    result.fold(
      (error) {
        emit(DeleteNotesError(error));
      },
      (_) {
        emit(DeleteNotesSuccess());
      },
    );
  }

  //update
  Future<void> updateNote(NotesModel note) async {
    emit(UpdateNotesLoading());
    final result = await notesRepo.updateNote(note);
    result.fold(
      (error) {
        emit(UpdateNotesError(error));
      },
      (_) {
        emit(UpdateNotesSuccess());
      },
    );
  }

  //getnotes
  Future<void> getNotes() async {
    emit(GetNotesLoading());
    final result = await notesRepo.getNotes();
    result.fold(
      (error) {
        emit(GetNoteError(error));
      },
      (notes) {
        emit(GetNoteSuccess(notes));
      },
    );
  }

  //notesStreem
  void getNotesStream() {
    emit(GetNotesStreamLoading());
    notesRepo.notesStream().listen((result) {
      result.fold(
        (error) {
          emit(GetNotesStreamError(error));
        },
        (noteslist) {
          emit(GetNotesStreamSuccess(noteslist));
        },
      );
    });
  }
}
