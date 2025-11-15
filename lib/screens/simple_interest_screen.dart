import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  double principal = 0, rate = 0, time = 0, simpleInterest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Interest Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            field(
              "Enter Principal",
              (v) => principal = double.tryParse(v) ?? 0,
            ),
            const SizedBox(height: 8),
            field("Enter Rate (%)", (v) => rate = double.tryParse(v) ?? 0),
            const SizedBox(height: 8),
            field("Enter Time (years)", (v) => time = double.tryParse(v) ?? 0),
            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    simpleInterest = (principal * rate * time) / 100;
                  });
                },
                child: const Text("CALCULATE SI"),
              ),
            ),

            const SizedBox(height: 20),
            Text(
              "Simple Interest: $simpleInterest",
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }

  Widget field(String label, Function(String) onChange) {
    return TextField(
      onChanged: onChange,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
