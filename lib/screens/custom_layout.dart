import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/widgets/my_button.dart';
import 'package:flutter_assignment_1/widgets/my_text_form_field.dart';

class CustomLayoutScreen extends StatefulWidget {
  const CustomLayoutScreen({super.key});

  @override
  State<CustomLayoutScreen> createState() => _CustomLayoutScreenState();
}

class _CustomLayoutScreenState extends State<CustomLayoutScreen> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Layout Screen")),
      body: Center(
        child: Column(
          children: [
            MyTextFormField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              text: 'Enter your name',
            ),
            const SizedBox(height: 20),
            MyButton(onPressed: () {}, text: 'Click Me'),
          ],
        ),
      ),
    );
  }
}
