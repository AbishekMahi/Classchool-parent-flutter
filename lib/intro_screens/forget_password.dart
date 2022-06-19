// ignore_for_file: unnecessary_const, prefer_const_constructors, avoid_print, sort_child_properties_last, unused_import, depend_on_referenced_packages, use_build_context_synchronously, unnecessary_import, camel_case_types, must_be_immutable

import 'dart:developer';
import 'package:classchool/intro_screens/otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'login.dart';

class forgetPassword extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  forgetPassword({Key? key}) : super(key: key);

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
                  Lottie.asset('assets/lottie/forgot_password.json',
                      width: 350),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'Forgot password? Don\'t worry, \njust a common human error here you can change new one.',
                      textAlign: TextAlign.center,
                      // overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.jost(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          height: 0,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    child: TextFormField(
                      controller: emailController,
                      style:
                          GoogleFonts.jost(fontSize: 22, color: Colors.white),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding:
                              EdgeInsets.all(0), // add padding to adjust icon
                          child: const Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Phone number',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: '+91 00000 00000',
                        hintStyle: const TextStyle(color: Colors.white54),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 16, bottom: 16),
                            child: Text(
                              'SUBMIT',
                              style: GoogleFonts.jost(
                                  fontSize: 24,
                                  color: Color(0XFF7455F7),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpPage(),
                              ),
                            );
                            //The user picked true.
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
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
                        'Check your inbox to get your code.',
                        style:
                            GoogleFonts.jost(fontSize: 22, color: Colors.white),
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
