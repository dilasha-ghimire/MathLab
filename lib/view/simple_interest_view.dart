import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  final principalController = TextEditingController(text: "100");
  final rateController = TextEditingController(text: "5");
  final timeController = TextEditingController(text: "10");
  double simpleInterest = 0.0;

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Interest Calculator',
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
      ),
      backgroundColor: const Color.fromARGB(255, 224, 230, 230),
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
                elevation: 4,
                shadowColor: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),

                      // Principal Amount
                      TextFormField(
                        controller: principalController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Enter Principal Amount',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter principal amount';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),

                      // Rate of Interest
                      TextFormField(
                        controller: rateController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Enter Rate of Interest',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter rate of interest';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),

                      // Time
                      TextFormField(
                        controller: timeController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Enter Time (in years)',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter time';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
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
                    'Simple Interest: Rs. ${simpleInterest.toStringAsFixed(2)}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Calculate Simple Interest Button
              ElevatedButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    setState(() {
                      double P = double.parse(principalController.text);
                      double T = double.parse(timeController.text);
                      double R = double.parse(rateController.text);
                      simpleInterest = (P * T * R) / 100;
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
                  'Calculate Simple Interest',
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
