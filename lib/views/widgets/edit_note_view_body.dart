import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar_view.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            CustomAppBarView(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 50),
            CustomTextField(hintText: 'Content', maxLines: 10),
          ],
        ),
      ),
    );
  }
}
