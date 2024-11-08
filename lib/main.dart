import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'telas/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
        home: const BottomNavbar(),
      );
}
