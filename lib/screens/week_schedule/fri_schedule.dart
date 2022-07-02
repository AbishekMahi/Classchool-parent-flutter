import 'package:flutter/material.dart';
import 'mon_schedule.dart';

class FridaySchedule extends StatefulWidget {
  const FridaySchedule({Key? key}) : super(key: key);

  @override
  State<FridaySchedule> createState() => _FridayScheduleState();
}

class _FridayScheduleState extends State<FridaySchedule> {
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
          LunchBreak(starttime: '12:20 pm', endtime: '01:20 pm'),
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
