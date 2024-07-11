import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapp1/Screens/screen1.dart';
import 'package:getapp1/Screens/screen2.dart';
import 'package:getapp1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter getX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/screenOne", page: () => ScreenOne()),
        GetPage(name: "/screenTwo", page: () => ScreenTwo()),
      ],
    );
  }
}

