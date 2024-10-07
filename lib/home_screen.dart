import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final _heighController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: _heighController,
              decoration: const InputDecoration(label: Text("Height (cm)")),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: _weightController,
              decoration: const InputDecoration(label: Text("Weight (kg)")),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 10
                    ),
                    child: const Text("Calculate"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text("Please enter your height dan weight"),
            const SizedBox(height: 25),
            SizedBox(
              width: 500,
              height: 300,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "00.00",
                        style: TextStyle(fontSize: 50),
                      ),
                      const Divider(color: Colors.grey, thickness: 5,),
                      const SizedBox(height: 15),
                      Image.asset("assets/images/bmi_categories.png", width: 600,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
