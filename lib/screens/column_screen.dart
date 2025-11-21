import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Screen")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(onPressed: () {}, child: const Text('Button 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
            OutlinedButton(onPressed: () {}, child: const Text('Button 3')),
          ],
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: const [
          //     Column(
          //       children: const [
          //         Icon(Icons.star, size: 50),
          //         Icon(Icons.star, size: 50),
          //       ],
          //     ),

          //     Column(
          //       children: const [
          //         Icon(Icons.star, size: 50),
          //         Icon(Icons.star, size: 100),
          //         Icon(Icons.star, size: 50),
          //       ],
          //     ),
          //     Column(
          //       children: const [
          //         Icon(Icons.star, size: 50),
          //         Icon(Icons.star, size: 50),
          //       ],
          //     ),
          //   ],
        ),
      ),
    );
  }
}
