import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentProfilePage extends StatefulWidget {
  const StudentProfilePage({Key? key}) : super(key: key);

  @override
  State<StudentProfilePage> createState() => _StudentProfilePageState();
}

class _StudentProfilePageState extends State<StudentProfilePage> {
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
            "Student Profile",
            style: GoogleFonts.jost(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 35),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 15, bottom: 15, left: 15),
                          padding: const EdgeInsets.only(
                              top: 40, right: 10, bottom: 10, left: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x29000000),
                                offset: Offset(0, 8),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Ad. No.',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Class',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'School',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ajith Kumar',
                                      style: GoogleFonts.jost(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '12AD2205',
                                      style: GoogleFonts.jost(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'VI - A',
                                      style: GoogleFonts.jost(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        'Adhiyaman Matriculation Higher Secondary School',
                                        style: GoogleFonts.jost(
                                            color: Colors.black87,
                                            fontSize: 18,
                                            height: 1.2,
                                            fontWeight: FontWeight.w400),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/boy.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(75.0),
                          border: Border.all(
                              width: 2.0, color: const Color(0xffffffff)),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 8),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Features
                Text(
                  "Features",
                  style: GoogleFonts.jost(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GridView.count(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: 2,
                    children: [
                      Features(
                        imageUrl: 'assets/images/homework.png',
                        title: 'HOMEWORK',
                        ontouch: () {},
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0XFFE9E9E9),
                            Color(0XFFF7FBB9),
                          ],
                        ),
                      ),
                      Features(
                        imageUrl: 'assets/images/speak.png',
                        title: 'COMMUNICATE',
                        ontouch: () {},
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0XFFE9E9E9),
                            Color(0XFFB2FFC1),
                          ],
                        ),
                      ),
                      Features(
                        imageUrl: 'assets/images/schedule.png',
                        title: 'SCHEDULE',
                        ontouch: () {},
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0XFFE9E9E9),
                            Color(0XFF9BDDFF),
                          ],
                        ),
                      ),
                      Features(
                          imageUrl: 'assets/images/attendence.png',
                          title: 'ATTTENDENCE',
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0XFFE9E9E9),
                              Color(0XFFFCBDBD),
                            ],
                          ),
                          ontouch: () {}),
                      Features(
                          imageUrl: 'assets/images/result.png',
                          title: 'RESULTS',
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0XFFE9E9E9),
                              Color(0XFFF6BAEE),
                            ],
                          ),
                          ontouch: () {}),
                      Features(
                          imageUrl: 'assets/images/event.png',
                          title: 'EVENTS',
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0XFFE9E9E9),
                              Color(0XFFD3F991),
                            ],
                          ),
                          ontouch: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Features({
  required String title,
  required String imageUrl,
  required Gradient gradient,
  required void Function() ontouch,
}) {
  return GestureDetector(
    onTap: ontouch,
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(2, 8),
            blurRadius: 6,
          ),
        ],
        gradient: gradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 80,
          ),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              maxLines: 1,
              style: GoogleFonts.jost(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ),
  );
}
