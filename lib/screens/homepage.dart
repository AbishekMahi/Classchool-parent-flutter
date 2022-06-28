import 'package:classchool/screens/intro_screens/add_new_student.dart';
import 'package:classchool/screens/studentprofile.dart';
import 'package:classchool/utils/constants.dart';
import 'package:classchool/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greetingMessage() {
    var timeNow = DateTime.now().hour;
    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good Afternoon';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [appThemeTop, appThemeBottom])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            greetingMessage(),
            style: GoogleFonts.jost(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_rounded,
                color: Color(0xFFF9D645),
              ),
              iconSize: 32,
            ),
            IconButton(
              padding: const EdgeInsets.only(right: 10),
              onPressed: () {},
              icon: const Icon(
                EvaIcons.menu2,
              ),
              iconSize: 32,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15, 5, 15, 15),
              padding: const EdgeInsets.all(10),
              // height: SizeConfig.screenHeight! * 0.22,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CHILDREN PROFILES",
                        style: GoogleFonts.jost(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        childrenProfile(
                            imageUrl: 'assets/images/boy.png',
                            name: 'Ajith Kumar',
                            ontouch: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentProfilePage(),
                                ),
                              );
                            }),
                        childrenProfile(
                            imageUrl: 'assets/images/girl.png',
                            name: 'Anitha',
                            ontouch: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentProfilePage(),
                                ),
                              );
                            }),
                        childrenProfile(
                            imageUrl: 'assets/images/boy.png',
                            name: 'Arun',
                            ontouch: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StudentProfilePage(),
                                ),
                              );
                            }),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => addNewStudent(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ClipOval(
                              child: Hero(
                                tag: 'addIcon',
                                child: Image.asset(
                                  "assets/images/add_icon.png",
                                  width: 45,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(10),
              // height: SizeConfig.screenHeight! * 0.555,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ANNOUNCEMENTS",
                        style: GoogleFonts.jost(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  AnnouncementWidget(
                    title: "Parents Meeting",
                    subTitle:
                        "Hello parents, friday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school1.png",
                  ),
                  AnnouncementWidget(
                    title: "Tomorrow Holiday",
                    subTitle:
                        "Hello parents, tomorrow will holiday because of heavy rain. stay safe.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school2.png",
                  ),
                  AnnouncementWidget(
                    title: "Parents Meeting",
                    subTitle:
                        "Hello parents, monday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school2.png",
                  ),
                  AnnouncementWidget(
                    title: "Parents Meeting",
                    subTitle:
                        "Hello parents, friday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school1.png",
                  ),
                  AnnouncementWidget(
                    title: "Parents Meeting",
                    subTitle:
                        "Hello parents, monday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school2.png",
                  ),
                  AnnouncementWidget(
                    title: "Parents Meeting",
                    subTitle:
                        "Hello parents, monday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school1.png",
                  ),
                  AnnouncementWidget(
                    title: "Parents Meeting",
                    subTitle:
                        "Hello parents, monday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school2.png",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget childrenProfile({
  required String name,
  required String imageUrl,
  required void Function() ontouch,
}) {
  return GestureDetector(
    onTap: ontouch,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      // height: SizeConfig.screenHeight! * 0.16,
      width: 100,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0XFFF6F1FF), Color(0XFFEDEDED)]),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ClipOval(
              child: Image.asset(
                imageUrl,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name,
                overflow: TextOverflow.clip,
                style: GoogleFonts.jost(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                maxLines: 1,
                textAlign: TextAlign.center),
          ),
        ],
      ),
    ),
  );
}

// ignore: must_be_immutable
class AnnouncementWidget extends StatefulWidget {
  String imageUrl;
  String title;
  String subTitle;
  String time;
  AnnouncementWidget(
      {required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.time,
      Key? key})
      : super(key: key);

  @override
  State<AnnouncementWidget> createState() => _AnnouncementWidgetState();
}

class _AnnouncementWidgetState extends State<AnnouncementWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0XFFF6F1FF), Color(0XFFEDEDED)]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        leading: ClipOval(
          child: Image.asset(
            widget.imageUrl,
          ),
        ),
        title: Text(
          widget.title,
          style: GoogleFonts.jost(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          widget.subTitle,
          style: GoogleFonts.jost(
              color: Colors.black87,
              fontSize: 14,
              height: 1.2,
              fontWeight: FontWeight.w400),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.time,
              style: GoogleFonts.jost(
                  color: Colors.black54,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
