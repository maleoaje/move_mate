import 'package:flutter/material.dart';
import 'package:move_mate/bottom_nav_bar.dart';
import 'package:move_mate/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoveMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        fontFamily: 'GT Walsheim Pro',
        primaryColor: white,
        highlightColor: primaryOrange,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: primaryBlue)
            .copyWith(background: primaryColor),
      ),
      home: const BottomNavBar(),
    );
  }
}
