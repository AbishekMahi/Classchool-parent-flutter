import 'package:classchool/utils/constants.dart';
import 'package:classchool/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
              margin: const EdgeInsets.all(20),
              height: SizeConfig.screenHeight! * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        const SizedBox(
                          width: 10,
                        ),
                        childrenProfile(
                            imageUrl:
                                'https://images.unsplash.com/photo-1630178836733-3d61d8974258?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80',
                            name: 'ArunKumar'),
                        const SizedBox(
                          width: 10,
                        ),
                        childrenProfile(
                            imageUrl:
                                'https://images.unsplash.com/photo-1630178836733-3d61d8974258?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80',
                            name: 'ArunKumar'),
                        const SizedBox(
                          width: 10,
                        ),
                        childrenProfile(
                            imageUrl:
                                'https://images.unsplash.com/photo-1630178836733-3d61d8974258?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80',
                            name: 'ArunKumar'),
                        const SizedBox(
                          width: 10,
                        ),
                        childrenProfile(
                            imageUrl:
                                'https://images.unsplash.com/photo-1630178836733-3d61d8974258?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80',
                            name: 'ArunKumar'),
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
              margin: const EdgeInsets.all(20),
              height: SizeConfig.screenHeight! * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
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
    height: SizeConfig.screenHeight! * 0.22,
    width: 120,
    decoration: BoxDecoration(
      color: Color(0xFFF6F1FF),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(name,
              style: GoogleFonts.jost(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              maxLines: 2,
              textAlign: TextAlign.center),
        ),
      ],
    ),
  );
}
