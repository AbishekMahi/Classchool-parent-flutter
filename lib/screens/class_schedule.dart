import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../utils/constants.dart';
import 'week_schedule/fri_schedule.dart';
import 'week_schedule/mon_schedule.dart';
import 'week_schedule/sat_schedule.dart';
import 'week_schedule/thu_schedule.dart';
import 'week_schedule/tues_schedule.dart';
import 'week_schedule/wed_schedule.dart';

class ClassSchedule extends StatefulWidget {
  const ClassSchedule({Key? key}) : super(key: key);

  @override
  State<ClassSchedule> createState() => _ClassScheduleState();
}

TabBar get tabBar => TabBar(
      isScrollable: true,
      labelColor: appThemeBottom,
      indicatorColor: appThemeBottom,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 3,
      unselectedLabelColor: Colors.black87,
      tabs: [
        Tab(
          child: Text(
            'MON',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Tab(
          child: Text(
            'TUE',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Tab(
          child: Text(
            'WED',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Tab(
          child: Text(
            'THU',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Tab(
          child: Text(
            'FRI',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Tab(
          child: Text(
            'SAT',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Tab(
          child: Text(
            'SUN',
            style: GoogleFonts.jost(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );

class _ClassScheduleState extends State<ClassSchedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [appThemeTop, appThemeBottom])),
      child: DefaultTabController(
        length: 7,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              "Class Schedule",
              style: GoogleFonts.jost(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
            bottom: PreferredSize(
              preferredSize: tabBar.preferredSize,
              child: ColoredBox(
                color: Colors.white,
                child: tabBar,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              const MondaySchedule(),
              const TuesdaySchedule(),
              const WednesdaySchedule(),
              const ThursdaySchedule(),
              const FridaySchedule(),
              const SaturdaySchedule(),
              // const SundaySchedule(),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Happy Holiday',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w500),
                          ),
                          Lottie.asset(
                            'assets/lottie/holiday.json',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
