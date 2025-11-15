import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int first = 0;
  int second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Arithmetic Operations")),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => first = int.tryParse(value) ?? 0,
              decoration: const InputDecoration(
                labelText: "Enter first number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) => second = int.tryParse(value) ?? 0,
              decoration: const InputDecoration(
                labelText: "Enter second number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            _btn("ADD", () => result = first + second),
            _btn("SUBTRACT", () => result = first - second),
            _btn("MULTIPLY", () => result = first * second),
            _btn("DIVIDE", () => result = second == 0 ? 0 : first ~/ second),

            const SizedBox(height: 12),
            Text("Result: $result", style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }

  Widget _btn(String text, Function() onTap) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => setState(onTap),
        child: Text(text),
      ),
    );
  }
}
