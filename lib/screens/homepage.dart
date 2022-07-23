import 'package:classchool/screens/intro_screens/add_new_student.dart';
import 'package:classchool/screens/studentprofile.dart';
import 'package:classchool/utils/constants.dart';
import 'package:classchool/utils/menu_list.dart';
import 'package:classchool/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'announcement_msg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
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
    Future<void> _refresh() async {
      return Future.delayed(
        const Duration(seconds: 1),
      );
    }

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [appThemeTop, appThemeBottom])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          key: _scaffoldkey,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              greetingMessage(),
              style: GoogleFonts.jost(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                splashRadius: 26,
                icon: const Icon(
                  Icons.notifications_rounded,
                  color: Color(0xFFF9D645),
                ),
                iconSize: 32,
              ),
              StatefulBuilder(
                builder: (BuildContext context, setState) {
                  return IconButton(
                    splashRadius: 26,
                    icon: const Icon(
                      EvaIcons.menu2,
                    ),
                    iconSize: 32,
                    onPressed: () {
                      _scaffoldkey.currentState!.openEndDrawer();
                    },
                  );
                },
              )
            ],
          ),
          endDrawer: const MenuList(),
          body: RefreshIndicator(
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            backgroundColor: const Color(0xFFEDE9FF),
            strokeWidth: 2,
            color: const Color(0XFF7455F7),
            onRefresh: _refresh,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  // height: SizeConfig.screenHeight! * 0.22,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x29000000),
                        offset: Offset(0, 4),
                        blurRadius: 3,
                      ),
                    ],
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
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => addNewStudent(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
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
                            const SizedBox(
                              width: 200,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  // height: SizeConfig.screenHeight! * 0.555,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x29000000),
                        offset: Offset(0, 4),
                        blurRadius: 3,
                      ),
                    ],
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
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      AnnouncementWidget(
                        title: "Parents Meeting",
                        subTitle:
                            "Hello parents, friday morning 10:30 am you have parents meeting.",
                        time: "9:00 PM",
                        imageUrl: "assets/images/adh_school.png",
                        ontouch: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AnnouncementMsg(),
                            ),
                          );
                        },
                      ),
                      AnnouncementWidget(
                        title: "Tomorrow Holiday",
                        subTitle:
                            "Hello parents, tomorrow will holiday because of heavy rain. stay safe.",
                        time: "9:00 PM",
                        imageUrl: "assets/images/school1.png",
                        ontouch: () {},
                      ),
                      AnnouncementWidget(
                        title: "Parents Meeting",
                        subTitle:
                            "Hello parents, monday morning 10:30 am you have parents meeting.",
                        time: "9:00 PM",
                        imageUrl: "assets/images/school2.png",
                        ontouch: () {},
                      ),
                      AnnouncementWidget(
                        title: "Parents Meeting",
                        subTitle:
                            "Hello parents, friday morning 10:30 am you have parents meeting.",
                        time: "9:00 PM",
                        imageUrl: "assets/images/adh_school.png",
                        ontouch: () {},
                      ),
                      AnnouncementWidget(
                        title: "Parents Meeting",
                        subTitle:
                            "Hello parents, monday morning 10:30 am you have parents meeting.",
                        time: "9:00 PM",
                        imageUrl: "assets/images/school2.png",
                        ontouch: () {},
                      ),
                      AnnouncementWidget(
                        title: "Parents Meeting",
                        subTitle:
                            "Hello parents, monday morning 10:30 am you have parents meeting.",
                        time: "9:00 PM",
                        imageUrl: "assets/images/school1.png",
                        ontouch: () {},
                      ),
                      AnnouncementWidget(
                        title: "Parents Meeting",
                        subTitle:
                            "Hello parents, monday morning 10:30 am you have parents meeting.",
                        time: "9:00 PM",
                        imageUrl: "assets/images/school2.png",
                        ontouch: () {},
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
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
  return InkWell(
    hoverColor: Colors.white,
    splashColor: Colors.white,
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
            child: Text(
              name,
              overflow: TextOverflow.clip,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: GoogleFonts.jost(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget AnnouncementWidget({
  required String title,
  required String subTitle,
  required String imageUrl,
  required String time,
  required void Function() ontouch,
}) {
  return InkWell(
    onTap: ontouch,
    child: Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0XFFEDEDED),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(1, 3),
            blurRadius: 2,
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        leading: ClipOval(
          child: Image.asset(
            imageUrl,
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.jost(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subTitle,
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
              time,
              style: GoogleFonts.jost(
                  color: Colors.black54,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    ),
  );
}
