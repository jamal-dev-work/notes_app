import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_field.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
    (
      padding: const EdgeInsets.all(16.0),
      child: Column
      (
        mainAxisSize: MainAxisSize.min,
        children: 
        [
          Text('Add Note' , style: Theme.of(context).textTheme.headlineSmall,),
          const SizedBox(height: 16.0,),
          CustomTextField(hintText: 'Title' , maxLines: 1, minLines: 1),
          const SizedBox(height: 16.0,),
          CustomTextField(hintText: 'Description' , maxLines: 5, minLines: 5),
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
            onPressed: (){}, 
            child: const Text('Add')
          ),
        ],
      ),
    );
  }
}