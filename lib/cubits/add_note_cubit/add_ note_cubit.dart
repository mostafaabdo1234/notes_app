import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());

}