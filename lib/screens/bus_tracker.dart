import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusTracker extends StatefulWidget {
  const BusTracker({Key? key}) : super(key: key);

  @override
  State<BusTracker> createState() => _BusTrackerState();
}

class _BusTrackerState extends State<BusTracker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [appThemeTop, appThemeBottom])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Bus Tracker",
            style: GoogleFonts.jost(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
