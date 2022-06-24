// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../utils/submit_button.dart';
import 'login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [Color(0XFFBD94FA), Color(0XFF7455F7)],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              PageView(
                controller: _controller,
                children: <Widget>[
                  // page1
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset('assets/lottie/student.json', width: 250),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Student Activities',
                          style: GoogleFonts.jost(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Monitor the complete activity of your child like attendance, marks and etc...',
                          style: GoogleFonts.jost(
                              fontSize: 20,
                              // letterSpacing: 1.5,
                              height: 1.5,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),

                  // page 2
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset('assets/lottie/map.json', height: 250),
                        Text(
                          textAlign: TextAlign.center,
                          'School Bus Tracker',
                          style: GoogleFonts.jost(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Live tracking of school bus with alerts for child pickup and drop.',
                          style: GoogleFonts.jost(
                              fontSize: 20,
                              // letterSpacing: 1.5,
                              height: 1.5,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),

                  // page 3
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/ptc.png',
                          height: 250,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Connect With Teachers',
                          style: GoogleFonts.jost(
                              height: 1.2,
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Chat or talk with your child\'s teachers and know more about your child.',
                          style: GoogleFonts.jost(
                              fontSize: 20,
                              // letterSpacing: 1.5,
                              height: 1.5,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment(0, 0.65),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                      spacing: 15.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      dotColor: Colors.white54,
                      activeDotColor: Colors.white),
                ),
              ),

              // Get started button
              Submit_Button(
                btntxt: 'GET STARTED',
                fontSize: 22,
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
