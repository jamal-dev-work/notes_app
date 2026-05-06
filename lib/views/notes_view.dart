import 'package:flutter/material.dart';
import 'package:notes_app/widget/add_model_bottom_sheet.dart';
import 'package:notes_app/widget/notes_view_body.dart';
class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          showModalBottomSheet
          (
            context: context, 
            builder: (context)
            {
              return AddModelBottomSheet();
            }
          );
        }, 
        child: const Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}