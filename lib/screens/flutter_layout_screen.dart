import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatefulWidget {
  const FlutterLayoutScreen({super.key});

  @override
  State<FlutterLayoutScreen> createState() => _FlutterLayoutScreen();
}

class _FlutterLayoutScreen extends State<FlutterLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout Screen"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        width: double.infinity,
        height: 90,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.brown),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Icon(Icons.phone),
                Text("CALL", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Icon(Icons.navigation_outlined, color: Colors.blueGrey),
                Text("ROUTE", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Icon(Icons.share, color: Colors.grey),
                Text("SHARE", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
