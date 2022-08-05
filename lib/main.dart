import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/screen_main_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.ubuntu().fontFamily,
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            color: Colors.white12,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
          ),
        ),
        home: ScreenMainPage());
  }
}
