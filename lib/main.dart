import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/home_screen.dart';
import 'package:flutter_catalog/screens/login_screen.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalog App',
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        MyRoutes.homeRoute: (context) => const HomeScreen()
      },
    );
  }
}
