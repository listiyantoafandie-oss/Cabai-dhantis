import 'package:flutter/material.dart';
import 'ai_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cabai AI Farm V3")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Masuk AI Dashboard"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AIScreen()),
            );
          },
        ),
      ),
    );
  }
}
