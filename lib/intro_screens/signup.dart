// ignore_for_file: unnecessary_const, prefer_const_constructors, avoid_print, sort_child_properties_last, unused_import, depend_on_referenced_packages, use_build_context_synchronously, must_be_immutable

import 'dart:developer';
import 'package:classchool/intro_screens/login.dart';
import 'package:classchool/intro_screens/otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
                  Lottie.asset('assets/login.json', width: 200),
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    child: TextFormField(
                      // controller: passwordController,
                      style:
                          GoogleFonts.jost(fontSize: 22, color: Colors.white),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding:
                                EdgeInsets.all(0), // add padding to adjust icon
                            child: Icon(
                              Icons.school_outlined,
                              color: Colors.white,
                            ),
                          ),
                          border: InputBorder.none,
                          labelText: 'School name',
                          labelStyle: const TextStyle(color: Colors.white),
                          hintText: 'Enter School name',
                          hintStyle: const TextStyle(color: Colors.white54),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    child: TextFormField(
                      // controller: passwordController,
                      style:
                          GoogleFonts.jost(fontSize: 22, color: Colors.white),
                      keyboardType: TextInputType.text,
                      // obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding:
                                EdgeInsets.all(0), // add padding to adjust icon
                            child: const Icon(
                              Icons.numbers_outlined,
                              color: Colors.white,
                            ),
                          ),
                          border: InputBorder.none,
                          labelText: 'Admission number',
                          labelStyle: const TextStyle(color: Colors.white),
                          hintText: 'Student admission number',
                          hintStyle: const TextStyle(color: Colors.white54),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          )),
                    ),
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
                            Icons.phone_outlined,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Phone number',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter Phone number',
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
                            Icons.mail_outlined,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Email address',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter email',
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
