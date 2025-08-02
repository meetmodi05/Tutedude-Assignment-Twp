import 'package:assignement_two/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const IntroCard());
}

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
