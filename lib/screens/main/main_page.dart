import 'package:classchool/screens/bus_tracker.dart';
import 'package:classchool/screens/homepage.dart';
import 'package:classchool/screens/profilepage.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    const HomePage(),
    const BusTracker(),
    const ProfilePage(),
  ];

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
        body: pageList[pageIndex],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: pageIndex,
              backgroundColor: bottomNavigationBarBackgroundColor,
              elevation: 0,
              onTap: (index) {
                setState(() => pageIndex = index);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on,
                  ),
                  label: 'Track Bus',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  label: 'Profile',
                  backgroundColor: Colors.transparent,
                ),
              ],
              selectedItemColor: Colors.white,
              selectedLabelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Jost'),
              selectedIconTheme:
                  const IconThemeData(size: 35, color: Colors.white),
              unselectedItemColor: const Color(0xFFFFFFFF).withOpacity(.80),
              unselectedIconTheme: const IconThemeData(size: 30),
              unselectedLabelStyle: const TextStyle(fontFamily: 'Jost'),
            ),
          ),
        ),
      ),
    );
  }
}
