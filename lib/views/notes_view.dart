import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_button_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            scrollControlDisabledMaxHeightRatio: 300,
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return AddNoteButtonSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
