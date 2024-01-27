import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/views/root/root_scr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soton Ahmed',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.seed),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const RootScreen(),
    );
  }
}

