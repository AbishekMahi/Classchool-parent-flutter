// ignore_for_file: unnecessary_const, prefer_const_constructors, avoid_print, sort_child_properties_last, unused_import, depend_on_referenced_packages, use_build_context_synchronously

import 'dart:developer';
import 'package:classchool/buttons/textfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';
import '../buttons/submit_button.dart';
import 'signup.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'forget_password.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
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
                    'Login Here!',
                    style: GoogleFonts.jost(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Email or phnone number
                  TextArea(
                    labelText: 'Email or phone number',
                    hintText: 'Email or phone number',
                    prefixIcon: Icons.account_circle_outlined,
                    obscureText: false,
                  ),
                  // password
                  TextArea(
                    labelText: 'Password',
                    hintText: 'Enter password',
                    prefixIcon: EvaIcons.lockOutline,
                    obscureText: true,
                  ),
                  // Fprgot password
                  TextButton(
                    child: Text(
                      'Forgot password?',
                      style: GoogleFonts.jost(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => forgetPassword(),
                        ),
                      );
                    },
                  ),
                  // Sign button
                  Submit_Button(
                    btntxt: 'SIGN IN',
                    fontSize: 24,
                    ontouch: () {},
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
                        'New User?',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: Colors.white),
                      ),
                      TextButton(
                        child: Text(
                          'Register Here!',
                          style: GoogleFonts.jost(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signup(),
                            ),
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
