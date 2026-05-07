import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  const CustomTextField({super.key, required this.hintText , required this.maxLines , required this.minLines});

  @override
  Widget build(BuildContext context) {
    return TextField
    (
      
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