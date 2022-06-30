import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/constants.dart';

class MondaySchedule extends StatefulWidget {
  const MondaySchedule({Key? key}) : super(key: key);

  @override
  State<MondaySchedule> createState() => _MondayScheduleState();
}

class _MondayScheduleState extends State<MondaySchedule> {
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

class ClassTable extends StatelessWidget {
  final String num;
  final String classname;
  final String teachername;
  final String starttime;
  final String endtime;

  const ClassTable(
      {Key? key,
      required this.classname,
      required this.teachername,
      required this.num,
      required this.starttime,
      required this.endtime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(0, 4),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: appThemeBottom,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(1, 3),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Text(
                  num,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.jost(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      classname,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.jost(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      teachername,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.jost(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  starttime,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.jost(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: appThemeBottom,
                  size: 20,
                ),
                Text(
                  endtime,
                  textAlign: TextAlign.right,
                  style: GoogleFonts.jost(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
