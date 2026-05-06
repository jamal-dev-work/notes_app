import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return NotesItem();
      },
    );
  }
}