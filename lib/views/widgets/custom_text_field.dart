import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        border: bordertextfield(),
        enabledBorder: bordertextfield(),
        focusedBorder: bordertextfield(kPrimaryColor)
      ),
    );
  }

  OutlineInputBorder bordertextfield([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color?? Colors.white
        )
      );
  }
}