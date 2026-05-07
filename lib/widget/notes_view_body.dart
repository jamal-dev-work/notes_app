import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column
      (
        children: 
        [
          CustomAppBar(icon: Icons.search, title: 'Notes'),
          const SizedBox(height: 16.0,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}