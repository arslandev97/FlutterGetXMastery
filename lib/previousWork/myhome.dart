import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("GetX Series", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [

          Card(
            child: ListTile(
              onTap: (){
                Get.defaultDialog(
                  title: "Delete Chat",
                  middleText: "Are you sure you want to delete this chat?",
                  titlePadding: const EdgeInsets.only(top: 20.0),
                  contentPadding: const EdgeInsets.all(20.0),
                  // content: Column(children: [],),
                  confirm: TextButton(
                    onPressed: (){
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: const Text("ok"),
                  ),
                  cancel: TextButton(
                    onPressed: (){
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: const Text("cancel"),
                  ),
                );
              },
              title: const Text("GetX Dialog Alert Box"),
              subtitle: const Text("Click to show dialog box using Flutter getX"),
            ),
          ),

          Card(
            child: ListTile(
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                          leading: const Icon(Icons.light_mode),
                          title: const Text("Light Theme"),
                        ),

                        ListTile(
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                          leading: const Icon(Icons.dark_mode),
                          title: const Text("Dark Theme"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("Bottom Sheet using Flutter Getx"),
            ),
          ),

          const SizedBox(height: 50.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){Get.changeTheme(ThemeData.light());}, icon: const Icon(Icons.light_mode)),
              IconButton(onPressed: (){Get.changeTheme(ThemeData.dark());}, icon: const Icon(Icons.dark_mode)),
            ],
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
