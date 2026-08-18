import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar_view.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          SizedBox(height: 25),
          CustomAppBarView(title: 'Notes', icon: Icons.search),
          SizedBox(height: 20),
          NotesListView(),
        ],
      ),
    );
  }
}
