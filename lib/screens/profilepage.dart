import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 1;

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
            "Profile",
            style: GoogleFonts.jost(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(15),
          height: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              backgroundColor: bottomNavigationBarBackgroundColor,
              elevation: 0,
              onTap: (value) {
                setState(() => _currentIndex = value);
              },
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
              unselectedItemColor: const Color(0xFFFFFFFF).withOpacity(.60),
              // unselectedItemColor: ,
            ),
          ),
        ),
      ),
    );
  }
}
