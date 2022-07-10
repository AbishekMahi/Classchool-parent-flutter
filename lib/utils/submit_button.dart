// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Submit_Button extends StatelessWidget {
  final String btntxt;
  final double? fontSize;
  final void Function() ontouch;

  const Submit_Button({
    Key? key,
    required this.btntxt,
    required this.ontouch,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            onPressed: ontouch,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                btntxt,
                style: GoogleFonts.jost(
                    fontSize: fontSize,
                    color: const Color(0XFF7455F7),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
