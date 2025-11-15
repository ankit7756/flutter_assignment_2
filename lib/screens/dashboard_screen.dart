import 'package:flutter/material.dart';
import 'arithmetic_screen.dart';
import 'simple_interest_screen.dart';
import 'area_of_circle_screen.dart';
import 'palindrome_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _menuButton(
              context,
              "Arithmetic Operations",
              const ArithmeticScreen(),
            ),
            const SizedBox(height: 12),
            _menuButton(
              context,
              "Simple Interest Calculator",
              const SimpleInterestScreen(),
            ),
            const SizedBox(height: 12),
            _menuButton(context, "Area of Circle", const AreaOfCircleScreen()),
            const SizedBox(height: 12),
            _menuButton(
              context,
              "Palindrome Checker",
              const PalindromeNumberScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton(BuildContext context, String title, Widget screen) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
        },
        child: Text(title),
      ),
    );
  }
}
