import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatefulWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  State<FlexibleExpandedScreen> createState() => _FlexibleExpandedScreenState();
}

class _FlexibleExpandedScreenState extends State<FlexibleExpandedScreen> {
  //  Single reusable method
  void _showSnack(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(message),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flexible Expanded Screen")),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => _showSnack("I am container 1", Colors.green),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  color: Colors.amber,
                  child: const Text("First Container"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () => _showSnack("I am container 2", Colors.red),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: const Text(
                    "Second Container",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
