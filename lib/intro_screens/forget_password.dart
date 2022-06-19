// ignore_for_file: unnecessary_const, prefer_const_constructors,  camel_case_types, must_be_immutable

import 'package:classchool/intro_screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../buttons/submit_button.dart';
import '../buttons/textfield.dart';

class forgetPassword extends StatelessWidget {
  const forgetPassword({Key? key}) : super(key: key);

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
                  TextArea(
                    labelText: 'Phone number',
                    hintText: '+91 00000 00000',
                    prefixIcon: Icons.phone_outlined,
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
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
