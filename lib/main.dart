import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_npp/core/colors/colors.dart';
import 'package:netflix_npp/presentation/main_pages/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backgroundcolor,
        textTheme: const TextTheme(
         // ignore: deprecated_member_use
         bodyText1: TextStyle(color: Colors.white),
          // ignore: deprecated_member_use
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home:ScreenMainPage() ,
    );
  }
}
