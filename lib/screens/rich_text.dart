import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rich Text Screen")),
      body: RichText(
        text: const TextSpan(
          text: "H",
          style: TextStyle(
            color: Colors.red,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'ello',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: 'bold',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.normal,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: 'World!',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
