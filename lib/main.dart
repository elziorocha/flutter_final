import 'package:flutter/material.dart';
import 'package:flutter_final/Provider/carrinho_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'telas/bottom_navbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CarrinhoProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
          home: const BottomNavbar(),
        ),
      );
}
