import 'package:flutter/material.dart';

// 1. Text Widget
Widget buildSampleText() {
  return const Text(
    "Hello Flutter Developer",
    style: TextStyle(
      fontSize: 25,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
  );
}

// 2. Container Widget
Widget buildSampleContainer() {
  return Container(
    height: 150,
    width: 200,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(15),
    ),
    child: const Center(
      child: Text(
        "Flutter",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    ),
  );
}

// 3. Row Widget
Widget buildSampleRow() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.home, size: 35),
      Icon(Icons.person, size: 35),
      Icon(Icons.settings, size: 35),
    ],
  );
}

// 4. Column Widget
Widget buildSampleColumn() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Name"),
      Text("Email"),
      Text("Phone"),
    ],
  );
}

/// Utility showcase screen displaying all sample widgets
class UtilitiesScreen extends StatelessWidget {
  const UtilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilities Showcase"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSampleText(),
              const SizedBox(height: 20),
              buildSampleContainer(),
              const SizedBox(height: 20),
              buildSampleRow(),
              const SizedBox(height: 20),
              buildSampleColumn(),
            ],
          ),
        ),
      ),
    );
  }
}
