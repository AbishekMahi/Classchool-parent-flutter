import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextArea extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  const TextArea({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.obscureText,
    this.controller,
    this.validator,
    this.keyboardType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: GoogleFonts.jost(fontSize: 20, color: Colors.white),
        keyboardType: keyboardType,
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
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 227, 15, 0),
              width: 2.0,
            ),
          ),
          errorStyle: GoogleFonts.jost(
            color: const Color(0xFFC70D00),
            fontSize: 15,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color(0xFFC70D00),
              width: 2.0,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}

class PwArea extends StatefulWidget {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  const PwArea(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.prefixIcon})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<PwArea> createState() => _PwAreaState(labelText, hintText, prefixIcon);
}

class _PwAreaState extends State<PwArea> {
  final String labelText;
  final String hintText;
  final IconData prefixIcon;
  TextEditingController passwordController = TextEditingController();

  bool _isHidden = true;

  _PwAreaState(this.labelText, this.hintText, this.prefixIcon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: passwordController,
          style: GoogleFonts.jost(fontSize: 20, color: Colors.white),
          keyboardType: TextInputType.visiblePassword,
          obscureText: _isHidden,
          decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.white,
            ),
            suffixIcon: InkWell(
              onTap: () {
                // Update the state i.e. toogle the state of passwordVisible variable
                setState(() {
                  _isHidden = !_isHidden;
                });
              },
              child: Icon(
                _isHidden
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Colors.white,
              ),
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
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 227, 15, 0),
                width: 2.0,
              ),
            ),
            errorStyle: GoogleFonts.jost(
              color: const Color(0xFFC70D00),
              fontSize: 15,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Color(0xFFC70D00),
                width: 2.0,
              ),
            ),
          ),
          validator: (value) {
            if (value!.isEmpty ||
                !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                    .hasMatch(value)) {
              return 'Enter a valid password!';
            }
            return null;
          }),
    );
  }
}
