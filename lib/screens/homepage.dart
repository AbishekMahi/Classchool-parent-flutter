import 'package:classchool/utils/constants.dart';
import 'package:classchool/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            "GOOD MORNING",
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
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.grid_view_rounded,
              ),
              iconSize: 30,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(15),
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
                            name: 'Ajith Kumar'),
                        childrenProfile(
                            imageUrl: 'assets/images/girl.png', name: 'Anitha'),
                        childrenProfile(
                            imageUrl: 'assets/images/boy.png', name: 'Arun'),
                        childrenProfile(
                            imageUrl: 'assets/images/girl.png', name: 'Anitha'),
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
              height: SizeConfig.screenHeight! * 0.6,
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
                    subTitle: "Hello parents, monday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school1.png",
                   ),
SizedBox(height: 10,),
                    AnnouncementWidget(
                    title: "Parents Meeting",
                    subTitle:
                        "Hello parents, monday morning 10:30 am you have parents meeting.",
                    time: "9:00 PM",
                    imageUrl: "assets/images/school1.png",
                  ),
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(15),
          height: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: bottomNavigationBarBackgroundColor,
              elevation: 0,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: 'Track Bus',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: 'Profile',
                  backgroundColor: Colors.transparent,
                ),
              ],
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

Widget childrenProfile({required String name, required String imageUrl}) {
  return Container(
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
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
              maxLines: 1,
              textAlign: TextAlign.center),
        ),
      ],
    ),
  );
}

class AnnouncementWidget extends StatefulWidget {
  String imageUrl;
  String title;
  String subTitle;
  String time;
   AnnouncementWidget({ required this.imageUrl, required this.title,required this.subTitle, required this.time,  Key? key}) : super(key: key);

  @override
  State<AnnouncementWidget> createState() => _AnnouncementWidgetState();
  
}

class _AnnouncementWidgetState extends State<AnnouncementWidget> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        color: const Color(0xFFF6F1FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
          leading: ClipOval(
            child: Image.asset(widget.imageUrl),
          ),
          
          title:  Text(widget.title),
          subtitle:  Text(
              widget.subTitle),
          trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [Text(widget.time)])),
    );
  }
}
