// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Lottie.asset('assets/student.json', width: 340),

                        // Lottie.network(
                        //     'https://assets5.lottiefiles.com/packages/lf20_yjrdpceb.json',
                        //     width: 340),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Student Activities',
                          style: GoogleFonts.jost(
                              fontSize: 42,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Monitor the complete activity of your child like attendance, marks and etc...',
                          style: GoogleFonts.jost(
                              fontSize: 25,
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
                        // Lottie.network(
                        //     'https://assets6.lottiefiles.com/packages/lf20_5xqvi8pf.json',
                        //     width: 340),
                        Lottie.asset('assets/map.json', width: 340),

                        Text(
                          textAlign: TextAlign.center,
                          'School Bus Tracker',
                          style: GoogleFonts.jost(
                              fontSize: 42,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Live tracking of school bus with alerts for child pickup and drop.',
                          style: GoogleFonts.jost(
                              fontSize: 25,
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
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/ptc.png'),
                        Text(
                          textAlign: TextAlign.center,
                          'Connect With Teachers',
                          style: GoogleFonts.jost(
                              height: 1.2,
                              fontSize: 42,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Chat or talk with your child\'s teachers and know more about your child.',
                          style: GoogleFonts.jost(
                              fontSize: 25,
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
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, top: 16, bottom: 16),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.jost(
                              fontSize: 28,
                              color: Color(0XFF7455F7),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                        //The user picked true.
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
