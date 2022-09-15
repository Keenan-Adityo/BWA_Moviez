import 'package:flutter/material.dart';

void main() {
  runApp(const Moviez());
}

class Moviez extends StatelessWidget {
  const Moviez({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moviez',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(),
    );
  }
}
