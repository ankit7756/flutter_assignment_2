import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Area of Circle")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => radius = double.tryParse(value) ?? 0,
              decoration: const InputDecoration(
                labelText: "Enter Radius",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    area = 3.1416 * radius * radius;
                  });
                },
                child: const Text("CALCULATE AREA"),
              ),
            ),

            const SizedBox(height: 12),
            Text("Area: $area", style: const TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
