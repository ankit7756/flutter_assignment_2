import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // Controllers with default values
  final TextEditingController firstController = TextEditingController(
    text: "1",
  );
  final TextEditingController secondController = TextEditingController(
    text: "2",
  );

  int result = 0;

  // Form Key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Arithmetic Operations")),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // FIRST NUMBER
              TextFormField(
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter first number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.isEmpty
                    ? "Enter first number"
                    : null,
              ),
              const SizedBox(height: 8),

              // SECOND NUMBER
              TextFormField(
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter second number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.isEmpty
                    ? "Enter second number"
                    : null,
              ),
              const SizedBox(height: 12),

              // BUTTONS
              _btn("ADD", () {
                int a = int.parse(firstController.text);
                int b = int.parse(secondController.text);
                result = a + b;
              }),

              _btn("SUBTRACT", () {
                int a = int.parse(firstController.text);
                int b = int.parse(secondController.text);
                result = a - b;
              }),

              _btn("MULTIPLY", () {
                int a = int.parse(firstController.text);
                int b = int.parse(secondController.text);
                result = a * b;
              }),

              _btn("DIVIDE", () {
                int a = int.parse(firstController.text);
                int b = int.parse(secondController.text);
                result = b == 0 ? 0 : a ~/ b;
              }),

              const SizedBox(height: 12),
              Text("Result: $result", style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _btn(String text, Function() calcFunction) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            setState(() {
              calcFunction();
            });
          }
        },
        child: Text(text),
      ),
    );
  }
}
