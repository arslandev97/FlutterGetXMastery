import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapp1/Screens/screen1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("GetX Series", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // TextButton(
          //   onPressed: (){
          //     // Get.to(const ScreenOne(name: "Arslan",));
          //     Get.toNamed("/screenOne", arguments: ["Arslan"]);
          //   },
          //   child: const Text("Go to next screen"),
          // ),

          TextButton(
            onPressed: () {
              Get.toNamed("/screenOne", arguments: {"name": "Arslan"});
            },
            child: const Text("Go to Screen One"),
          ),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
            "Welcome",
            "Welcome to Flutter GetX Course",
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(Icons.notification_add),
      ),

    );

  }
}
