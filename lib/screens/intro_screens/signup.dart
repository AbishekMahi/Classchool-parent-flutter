// ignore_for_file: unnecessary_const, prefer_const_constructors, must_be_immutable

import 'package:classchool/screens/intro_screens/login.dart';
import 'package:classchool/screens/intro_screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/submit_button.dart';
import '../../utils/textfield.dart';

class Signup extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

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
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Lottie.asset('assets/lottie/login.json', width: 180),
                    Text(
                      'Signup Here!',
                      style: GoogleFonts.jost(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          height: 0,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      labelText: 'School name',
                      hintText: 'Enter school name',
                      prefixIcon: Icons.school_outlined,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter valid school name';
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      labelText: 'Admission number',
                      hintText: 'Student admission number',
                      prefixIcon: Icons.numbers_outlined,
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter valid Admission number';
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      labelText: 'Phone number',
                      hintText: '+91 00000 00000',
                      prefixIcon: Icons.phone_outlined,
                      obscureText: false,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$')
                                .hasMatch(value)) {
                          return 'Invalid Phone number!';
                        }
                        return null;
                      },
                    ),
                    Submit_Button(
                      btntxt: 'SUBMIT',
                      fontSize: 22,
                      ontouch: () {
                        _submit();
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
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Have an account?',
                          style: GoogleFonts.jost(
                              fontSize: 20, color: Colors.white),
                        ),
                        TextButton(
                          child: Text(
                            'Login Here!',
                            style: GoogleFonts.jost(
                                fontSize: 20,
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
      ),
    );
  }
}
