import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_profile/main_menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xFFA95962),
        textTheme: GoogleFonts.rubikTextTheme(),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            overlayColor: MaterialStateProperty.all(Colors.white30),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
      ),
      title: 'Web Resume',
      scrollBehavior: AppScrollBehavior(),
      home: const MyStatelessWidget(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
