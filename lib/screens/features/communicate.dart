import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Communicate extends StatefulWidget {
  const Communicate({Key? key}) : super(key: key);

  @override
  State<Communicate> createState() => _CommunicateState();
}

class _CommunicateState extends State<Communicate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [appThemeTop, appThemeBottom]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Communicate",
            style: GoogleFonts.jost(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(),
      ),
    );
  }
}
