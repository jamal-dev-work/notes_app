import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column
      (
        children: 
        [
          CustomAppBar
          (
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 32.0,),
          CustomTextField(hintText: 'Title' , maxLines: 1, minLines: 1),
          const SizedBox(height: 16.0,),
          CustomTextField(hintText: 'Description' , maxLines: 5, minLines: 5),
        ],
      ),
    );
  }
}