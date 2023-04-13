import 'package:d_books/core/manager/colors_manager.dart';
import 'package:d_books/modules/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: ColorsManager.primaryColor,),
      home: const SplashScreen(),
    );
  }
}

