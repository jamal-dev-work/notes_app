import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title , description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column
          (
            mainAxisSize: MainAxisSize.min,
            children: 
            [
              Text('Add Note' , style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(height: 16.0,),
              CustomTextField(hintText: 'Title' , maxLines: 1, minLines: 1 , onSaved: (value) => title = value),
              const SizedBox(height: 16.0,),
              CustomTextField(hintText: 'Description' , maxLines: 5, minLines: 5, onSaved: (value) => description = value),
              const SizedBox(height: 16.0,),
              ElevatedButton
              (
                style: ElevatedButton.styleFrom
                (
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // Handle form submission
                    formKey.currentState!.save();
                  }else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                }, 
                child: const Text('Add')
              ),
            ],
          ),
    );
  }
}