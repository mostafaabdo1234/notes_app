import 'package:flutter/cupertino.dart';

import '../../constant.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex=KColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: KColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.noteModel.color=KColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: KColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }
      ));
  }
}