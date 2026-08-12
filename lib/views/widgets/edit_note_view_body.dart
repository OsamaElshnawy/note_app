import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar_view.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [CustomAppBarView(title: 'Edit Note', icon: Icons.done)],
          ),
        ],
      ),
    );
  }
}
