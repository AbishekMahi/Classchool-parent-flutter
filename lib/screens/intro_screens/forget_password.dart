// ignore_for_file: unnecessary_const, prefer_const_constructors,  camel_case_types, must_be_immutable

import 'package:classchool/screens/intro_screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../buttons/submit_button.dart';
import '../buttons/textfield.dart';

class forgetPassword extends StatelessWidget {
  forgetPassword({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

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
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Lottie.asset('assets/lottie/forgot_password.json',
                        width: 350),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'Forgot password? Don\'t worry, just a common human error here you can change new one.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 0,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                    SizedBox(
                      height: 10,
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
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Check your inbox to get your code.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.jost(
                        fontSize: 20,
                        color: Colors.white,
                      ),
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
