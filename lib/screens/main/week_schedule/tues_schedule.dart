import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'monday_schedule.dart';

class TuesdaySchedule extends StatefulWidget {
  const TuesdaySchedule({Key? key}) : super(key: key);

  @override
  State<TuesdaySchedule> createState() => _TuesdayScheduleState();
}

class _TuesdayScheduleState extends State<TuesdaySchedule> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          const ClassTable(
            num: '1',
            classname: "English",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
          const ClassTable(
            num: '2',
            classname: "Tamil",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
          const ClassTable(
            num: '3',
            classname: "Mathametics",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
          const ClassTable(
            num: '4',
            classname: "Physics",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 156, 255, 162),
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x29000000),
                  offset: Offset(0, 4),
                  blurRadius: 3,
                ),
              ],
            ),
            child: Text(
              'Lunch Break (12:20 pm - 01:20 pm)',
              textAlign: TextAlign.center,
              style: GoogleFonts.jost(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const ClassTable(
            num: '5',
            classname: "Chemistry",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
          const ClassTable(
            num: '6',
            classname: "Biology",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
          const ClassTable(
            num: '7',
            classname: "Computer Lab",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
          const ClassTable(
            num: '8',
            classname: "P.E.T.",
            teachername: 'Raja Laksmi',
            starttime: '8:00 AM',
            endtime: '8:50 AM',
          ),
        ],
      ),
    );
  }
}
