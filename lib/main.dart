import 'package:flutter/material.dart';
import 'package:t20_yt/screens/home_screen.dart';
import 'package:t20_yt/screens/schedule_screen.dart';
import 'package:t20_yt/utility/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T20 World Cup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: AppColors.primaryColor,

        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
        )
      ),
      home: const HomeScreen(),
    );
  }
}

