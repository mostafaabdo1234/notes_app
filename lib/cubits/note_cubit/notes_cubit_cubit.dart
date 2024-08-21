import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import '../../constant.dart';
import '../../models/note_model.dart';
part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
       notes = noteBox.values.toList();
       emit(NotesCubitSuccess());
  }
}