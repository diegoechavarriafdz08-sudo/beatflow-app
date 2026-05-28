import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const BeatFlowApp());
}

class BeatFlowApp extends StatelessWidget {
  const BeatFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BeatFlow',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}