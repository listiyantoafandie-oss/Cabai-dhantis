import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class CabaiApp extends StatelessWidget {
  const CabaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cabai AI Farm V3',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomeScreen(),
    );
  }
}
