// ignore_for_file: unnecessary_const, prefer_const_constructors,

import 'package:classchool/screens/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'forget_password.dart';
import '../../utils/submit_button.dart' show Submit_Button;
import '../../utils/textfield.dart' show CustomTextField, PasswordField;

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
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
                    Lottie.asset('assets/lottie/login.json', width: 180),
                    Text(
                      'Login Here!',
                      style: GoogleFonts.jost(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          height: 0,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Email or phone number
                    CustomTextField(
                      labelText: 'Email or phone number',
                      hintText: 'Email or phone number',
                      prefixIcon: Icons.account_circle_outlined,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Enter a valid input!';
                        }
                        return null;
                      },
                    ),
                    // password
                    PasswordField(
                      labelText: 'Password',
                      hintText: 'Enter password',
                      prefixIcon: EvaIcons.lockOutline,
                    ),
                    TextButton(
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.jost(
                            fontSize: 20,
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
                      fontSize: 22,
                      ontouch: () {
                        _submit();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
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
                          'New User?',
                          style: GoogleFonts.jost(
                              fontSize: 20, color: Colors.white),
                        ),
                        TextButton(
                          child: Text(
                            'Register Here!',
                            style: GoogleFonts.jost(
                                fontSize: 20,
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
      ),
    );
  }
}
