import 'package:flutter/material.dart';
import 'package:myntra_ui/pages/sharednav.dart';
import 'package:myntra_ui/pages/transction.dart';
import 'pages/Homescreen.dart';
import 'pages/historyscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'sharednav',
      routes: {
        'sharednav': (context) => const Sharednav(),
        'Homescreen': (context) => const Homescreen(),
        'historypage': (context) => const Historyscreen(),
        'transactionscreen': (context) => const TransctionScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 152, 33, 225))),
    );
  }
}
