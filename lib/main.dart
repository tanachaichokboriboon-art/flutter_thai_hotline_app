import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterThaiHotlineAPP(),
  );
}

class FlutterThaiHotlineAPP extends StatefulWidget {
  const FlutterThaiHotlineAPP({super.key});

  @override
  State<FlutterThaiHotlineAPP> createState() => _FlutterThaiHotlineAPPState();
}

class _FlutterThaiHotlineAPPState extends State<FlutterThaiHotlineAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        useMaterial3: true,
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: GoogleFonts.kanit().fontFamily,
              fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
            ),
      ),
    );
  }
}
