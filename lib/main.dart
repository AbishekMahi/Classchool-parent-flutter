import 'package:classchool/screens/intro_screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Classchool());
}

class Classchool extends StatelessWidget {
  const Classchool({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Classchool',
      home: Welcome(),
    );
  }
}
