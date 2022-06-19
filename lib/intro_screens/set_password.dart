// ignore_for_file: unnecessary_const, prefer_const_constructors, avoid_print, sort_child_properties_last, depend_on_referenced_packages, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class SetPassword extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();
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
                  Lottie.asset('assets/set_password.json', width: 250),
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    child: TextFormField(
                      controller: passwordController,
                      style:
                          GoogleFonts.jost(fontSize: 22, color: Colors.white),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding:
                              EdgeInsets.all(0), // add padding to adjust icon
                          child: const Icon(
                            EvaIcons.lockOutline,
                            color: Colors.white,
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'New password',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintText: 'Enter new password',
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
                        left: 20, top: 10, bottom: 10, right: 20),
                    child: TextFormField(
                      controller: passwordController,
                      style:
                          GoogleFonts.jost(fontSize: 22, color: Colors.white),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding:
                                EdgeInsets.all(0), // add padding to adjust icon
                            child: const Icon(
                              EvaIcons.lockOutline,
                              color: Colors.white,
                            ),
                          ),
                          border: InputBorder.none,
                          labelText: 'Confirm password',
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Re-Enter password',
                          hintStyle: TextStyle(color: Colors.white54),
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
                  SizedBox(
                    height: 25.0,
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
                              'LET\'S GO',
                              style: GoogleFonts.jost(
                                  fontSize: 24,
                                  color: Color(0XFF7455F7),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => Login(),
                            //   ),
                            // );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
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
