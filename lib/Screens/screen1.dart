import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapp1/Screens/screen2.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  late String name;

  @override
  void initState() {
    super.initState();
    // Initialize 'name' using the arguments passed via Get.toNamed
    name = Get.arguments['name'];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Screen one $name", style: const TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          TextButton(
            onPressed: (){
              Get.to(const ScreenTwo());
            },
            child: const Text("Go to Next"),
          ),

          TextButton(
            onPressed: (){
              Get.back();
            },
            child: const Text("Go Back"),
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
