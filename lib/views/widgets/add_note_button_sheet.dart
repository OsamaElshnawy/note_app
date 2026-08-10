import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
        child: TextField(
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
            border: buildBorder(Colors.white),
            enabledBorder: buildBorder(Colors.white),
            focusedBorder: buildBorder(kPrimaryColor),
            hintText: 'Title',
            hintStyle: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 2.0),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
