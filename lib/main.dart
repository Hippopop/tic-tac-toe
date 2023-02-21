import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/my_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

