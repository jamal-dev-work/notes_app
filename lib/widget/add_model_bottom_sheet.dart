import 'package:flutter/material.dart';
import 'package:notes_app/widget/add_note_form.dart';
class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: AddNoteForm()
      ),
    );
  }
}