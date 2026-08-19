import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(
        kNotesBox,
      ); // Get the notes box from Hive
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } on Exception catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
    // Add the note to the notes box
  }
}
