import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(maxLines: 2, hintText: 'title'),
              const SizedBox(height: 16.0),
              CustomTextField(maxLines: 5, hintText: 'content'),
              const SizedBox(height: 40.0),
              CustomButton(title: 'Add'),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
