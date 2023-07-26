import 'package:flutter/material.dart';
import 'package:home_screen/home_screen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});
  static const String id = "screen_two";
  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Navigation Drawer")),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
            child: const Text('screen 2'),
          ),
        )
      ]),
    );
  }
}
