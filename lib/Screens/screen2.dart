import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Screen Two", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [



          TextButton(
            onPressed: (){
              Get.back();
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
