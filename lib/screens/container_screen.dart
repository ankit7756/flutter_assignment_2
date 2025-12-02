import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      // body: SafeArea(
      //   child: Center(
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         color: Colors.amberAccent,
      //         border: Border.all(color: Colors.black, width: 2),
      //       ),
      //       child: const Text('I am container'),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
          child: const Text("Hello"),
        ),
      ),
    );
  }
}
