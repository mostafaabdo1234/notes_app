import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import '../../constant.dart';
import '../../models/note_model.dart';
part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesCubitSuccess(notes));
    } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}
