import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextArea extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;

  TextArea({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.obscureText,
  }) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
      child: TextFormField(
        // controller: emailController,
        style: GoogleFonts.jost(fontSize: 22, color: Colors.white),
        keyboardType: TextInputType.text,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white70),
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
    );
  }
}
