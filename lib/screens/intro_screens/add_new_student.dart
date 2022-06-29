// ignore_for_file: camel_case_types

import 'package:classchool/screens/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/submit_button.dart';
import '../../utils/textfield.dart';

// ignore: must_be_immutable
class addNewStudent extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  addNewStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0XFFBD94FA), Color(0XFF7455F7)],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              reverse: true,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Hero(
                        tag: 'addIcon',
                        child:
                            Lottie.asset('assets/lottie/add.json', width: 180)),
                    Text(
                      textAlign: TextAlign.center,
                      'Add new student profile',
                      style: GoogleFonts.jost(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          height: 0,
                          color: Colors.white),
                    ),
                    const SizedBox(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Submit_Button(
                      btntxt: 'ADD',
                      fontSize: 22,
                      ontouch: () {
                        _submit();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      },
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
