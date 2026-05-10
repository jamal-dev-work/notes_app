import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final void Function(String?)? onSaved;
  const CustomTextField({super.key, required this.hintText , required this.maxLines , required this.minLines, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField
    (
      validator: (value) => value == null || value.isEmpty ? 'This field is required' : null,
      onSaved: onSaved,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration
      (
        hintText: hintText,
        border: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.blue.withValues(alpha: .3)),
        ),
        focusedBorder: OutlineInputBorder
        (
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.blue.withValues(alpha: .8)),
        ),

      ),
    );
  }
}