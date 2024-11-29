import 'package:mathlab/view/arithmetic_view.dart';
import 'package:mathlab/view/simple_interest_view.dart';
import 'package:mathlab/view/area_of_circle_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to MathLab',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 106, 117, 148),
        shadowColor: const Color.fromARGB(255, 3, 1, 22),
      ),
      backgroundColor: const Color.fromARGB(255, 224, 230, 230),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40), // Gap above the box
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                // the width is measured from the ratio of the screen
                // (currently covers 9/10)
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 22, 18, 18)
                          .withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    // Area of Circle Card
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 3,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AreaOfCircleView()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 10, 35, 54),
                                Color.fromARGB(255, 36, 69, 94),
                                Color.fromARGB(255, 53, 88, 114),
                                Color.fromARGB(255, 90, 113, 130),
                                Color.fromARGB(255, 161, 171, 185)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle, size: 50, color: Colors.white),
                              SizedBox(height: 10),
                              Text(
                                'Area of Circle',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Simple Interest Card
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 3,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SimpleInterestView()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 12, 68, 14),
                                Color.fromARGB(255, 47, 117, 50),
                                Color.fromARGB(255, 63, 135, 66),
                                Color.fromARGB(255, 102, 149, 126),
                                Color.fromARGB(255, 179, 208, 194)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.savings,
                                  size: 50, color: Colors.white),
                              SizedBox(height: 10),
                              Text(
                                'Simple Interest',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Arithmetic Operations Card
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 3,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ArithmeticView()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 65, 18, 73),
                                Color.fromARGB(255, 102, 40, 102),
                                Color.fromARGB(255, 132, 66, 132),
                                Color.fromARGB(255, 160, 115, 168),
                                Color.fromARGB(255, 210, 180, 215)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calculate,
                                  size: 50, color: Colors.white),
                              SizedBox(height: 10),
                              Text(
                                'Arithmetic Operations',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30), // Gap below the box
          ],
        ),
      ),
    );
  }
}
