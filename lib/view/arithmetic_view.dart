import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // default value (easy for testing)
  final firstController = TextEditingController(text: "3");
  final secondController = TextEditingController(text: "2");
  int result = 0;

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arithmetic Operations',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 106, 117, 148),
        shadowColor: const Color.fromARGB(255, 3, 1, 22),
        iconTheme: const IconThemeData(color: Colors.white),
        // to change the color of 'back' icon
      ),
      backgroundColor: const Color.fromARGB(255, 224, 230, 230),
      // background color of body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: myKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),

              // User Input Card
              Card(
                elevation: 10,
                shadowColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(children: [
                    const SizedBox(height: 15),

                    // First Number
                    TextFormField(
                      controller: firstController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter first number',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter first number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),

                    // Second Number
                    TextFormField(
                      controller: secondController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter second number',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter second number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                  ]),
                ),
              ),
              const SizedBox(height: 20),

              // Result Card
              Card(
                elevation: 3,
                color: const Color.fromARGB(158, 162, 171, 196),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Result: $result',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Addition Button
              ElevatedButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    setState(() {
                      result = int.parse(firstController.text) +
                          int.parse(secondController.text);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromARGB(179, 163, 212, 180),
                ),
                child: const Text(
                  'Addition',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),

              // Subtraction Button
              ElevatedButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    setState(() {
                      result = int.parse(firstController.text) -
                          int.parse(secondController.text);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromARGB(179, 163, 212, 180),
                ),
                child: const Text(
                  'Subtraction',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),

              // Multiplication Button
              ElevatedButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    setState(() {
                      result = int.parse(firstController.text) *
                          int.parse(secondController.text);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromARGB(179, 163, 212, 180),
                ),
                child: const Text(
                  'Multiplication',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
