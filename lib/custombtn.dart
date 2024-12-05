import 'package:flutter/material.dart';

class Custombtn extends StatefulWidget {
  const Custombtn({super.key});

  @override
  State<Custombtn> createState() => _CustombtnState();
}

class _CustombtnState extends State<Custombtn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.scanner),
        ),
      ),
    );
  }
}
