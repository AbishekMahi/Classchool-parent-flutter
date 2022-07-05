import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AnnouncementMsg extends StatefulWidget {
  const AnnouncementMsg({Key? key}) : super(key: key);

  @override
  State<AnnouncementMsg> createState() => _AnnouncementMsgState();
}

class _AnnouncementMsgState extends State<AnnouncementMsg> {
  bool _isSaved = true;
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
            "Announcement",
            style: GoogleFonts.jost(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(
          height: double.infinity,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/adh_school.png',
                              width: 70,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              'Parents Meeting',
                              style: GoogleFonts.jost(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Today 9:00 PM",
                              style: GoogleFonts.jost(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          showToast;
                          _isSaved = !_isSaved;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xAEE0E0E0),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          _isSaved
                              ? Icons.bookmark_border_outlined
                              : Icons.bookmark_outlined,
                          color: appThemeBottom,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text(
                    'Dear Parents, \n         Hello parents, monday morning 10:30 am you have parents meeting. Hello parents, monday morning 10:30 am you have parents meeting. \nHello parents, monday morning 10:30 am you have parents meeting. Hello parents, monday morning 10:30 am you have parents meeting. \n\n With regards, \n M.Srnivasan',
                    style: GoogleFonts.jost(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
      msg: "Message Saved",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: const Color.fromARGB(255, 113, 255, 118),
      textColor: Colors.black87,
      fontSize: 16.0);
}
