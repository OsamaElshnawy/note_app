import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.maxLines = 1, required this.hintText});
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(Colors.white),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder(Color color) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 2.0),
    borderRadius: BorderRadius.circular(8.0),
  );
}
