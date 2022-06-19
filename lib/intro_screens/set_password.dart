// ignore_for_file: unnecessary_const, prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import '../buttons/submit_button.dart';
import '../buttons/textfield.dart';

class SetPassword extends StatelessWidget {
  SetPassword({Key? key}) : super(key: key);

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
                  Lottie.asset('assets/lottie/set_password.json', width: 250),
                  Text(
                    'Set strong password',
                    style: GoogleFonts.jost(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextArea(
                    labelText: 'New Password',
                    hintText: 'Enter new password',
                    prefixIcon: EvaIcons.lockOutline,
                    obscureText: true,
                  ),
                  TextArea(
                    labelText: 'Confirm Password',
                    hintText: 'Re-Enter password',
                    prefixIcon: EvaIcons.lockOutline,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Submit_Button(
                    btntxt: 'LET\'S GO',
                    fontSize: 24,
                    ontouch: () {},
                  ),
                  SizedBox(
                    height: 10,
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
