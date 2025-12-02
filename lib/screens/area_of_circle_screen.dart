import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  // ⭐ NEW: Controller to read radius value
  final TextEditingController radiusController = TextEditingController(
    text: "5",
  );

  // ⭐ NEW: Global key for form validation
  final _formKey = GlobalKey<FormState>();

  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Area of Circle")),
      body: Padding(
        padding: const EdgeInsets.all(16),

        // ⭐ NEW: Wrapping everything in a Form
        child: Form(
          key: _formKey,

          child: Column(
            children: [
              // ⭐ NEW: TextFormField instead of TextField
              TextFormField(
                controller: radiusController, // ⭐ NEW

                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  labelText: 'Enter Radius',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                // ⭐ NEW: Validation added
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter radius";
                  }
                  if (double.tryParse(value) == null) {
                    return "Please enter a valid number";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // ⭐ NEW: Validate before calculating
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        double radius = double.parse(radiusController.text);
                        area = 3.1416 * radius * radius;
                      });
                    }
                  },
                  child: const Text("CALCULATE AREA"),
                ),
              ),

              const SizedBox(height: 12),

              Text("Area: $area", style: const TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}
