import 'package:classchool/screens/login_screen.dart';
import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class School',
      theme: ThemeData(
        primaryColor: appTheme
      ),
      home:const LoginScreen(),
    );
  }
}

