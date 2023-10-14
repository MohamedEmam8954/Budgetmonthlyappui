import 'package:budgetmonthlyappui/views/Home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Budgetmonthlyapp());
}

class Budgetmonthlyapp extends StatelessWidget {
  const Budgetmonthlyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
