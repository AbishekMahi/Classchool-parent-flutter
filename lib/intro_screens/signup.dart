// ignore_for_file: unnecessary_const, prefer_const_constructors, avoid_print, sort_child_properties_last, unused_import, depend_on_referenced_packages, use_build_context_synchronously, must_be_immutable

import 'dart:developer';
import 'package:classchool/intro_screens/login.dart';
import 'package:classchool/intro_screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import '../buttons/submit_button.dart';
import '../buttons/textfield.dart';
import 'forget_password.dart';

class Signup extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        // backgroundColor: Color(0xFF262525),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: const [Color(0XFFBD94FA), Color(0XFF7455F7)],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Lottie.asset('assets/lottie/login.json', width: 200),
                  Text(
                    'Signup Here!',
                    style: GoogleFonts.jost(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextArea(
                    labelText: 'School name',
                    hintText: 'Enter school name',
                    prefixIcon: Icons.school_outlined,
                    obscureText: false,
                  ),
                  TextArea(
                    labelText: 'Admission number',
                    hintText: 'Student admission number',
                    prefixIcon: Icons.numbers_outlined,
                    obscureText: false,
                  ),
                  TextArea(
                    labelText: 'Phone number',
                    hintText: '+91 00000 00000',
                    prefixIcon: Icons.phone_outlined,
                    obscureText: false,
                  ),
                  TextArea(
                    labelText: 'Email address',
                    hintText: 'yourname@domain.com',
                    prefixIcon: Icons.mail_outlined,
                    obscureText: false,
                  ),
                  Submit_Button(
                    btntxt: 'SUBMIT',
                    fontSize: 24,
                    ontouch: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Have an account?',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: Colors.white),
                      ),
                      TextButton(
                        child: Text(
                          'Login Here!',
                          style: GoogleFonts.jost(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
