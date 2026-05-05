import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData
      (
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme
        (
          ThemeData.dark().textTheme
        ),
      ),
      home: NotesView(),
    );
  }
}