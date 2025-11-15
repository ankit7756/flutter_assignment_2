import 'package:flutter/material.dart';

class PalindromeNumberScreen extends StatefulWidget {
  const PalindromeNumberScreen({super.key});

  @override
  State<PalindromeNumberScreen> createState() => _PalindromeNumberScreenState();
}

class _PalindromeNumberScreenState extends State<PalindromeNumberScreen> {
  String number = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Palindrome Checker")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => number = value,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Number",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    String reversed = number.split('').reversed.join('');
                    result = (number == reversed)
                        ? "It's Palindrome!"
                        : "Not Palindrome";
                  });
                },
                child: const Text("CHECK"),
              ),
            ),

            const SizedBox(height: 12),
            Text(result, style: const TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
