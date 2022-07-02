import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({Key? key}) : super(key: key);

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

TabBar get tabBar => TabBar(
      // isScrollable: true,
      labelColor: appThemeBottom,
      indicatorColor: appThemeBottom,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 3,
      unselectedLabelColor: Colors.black87,
      tabs: [
        Tab(
          child: Text(
            'TODAY',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Tab(
          child: Text(
            'OLD',
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [appThemeTop, appThemeBottom]),
      ),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            elevation: 0,
            backgroundColor: appThemeTop,
            title: Text(
              "Homework",
              style: GoogleFonts.jost(
                  color: Colors.white,
                  fontSize: 25,
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFFFADAD),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'Maths',
                      teachername: 'Sakthivel',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFADF9FF),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFFFF9AD),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFF6BAEE),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFADFFBA),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    HomeworkCard(
                      subjecttitle: 'Maths',
                      teachername: 'Sakthivel',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFADF9FF),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFFFF9AD),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFF6BAEE),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFADFFBA),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'English',
                      teachername: 'Anbucheliyan',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFFFADAD),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                    HomeworkCard(
                      subjecttitle: 'Maths',
                      teachername: 'Sakthivel',
                      homeworktext:
                          "Hello Students, today's assignment is to Write the essay about the Twin Tower, and dont forget to bring the notebook tomorrow.",
                      ontouch: () {},
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFFE9E9E9),
                          Color(0XFFADF9FF),
                        ],
                      ),
                      msgtime: 'Today 5:00 PM',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget HomeworkCard({
  required String subjecttitle,
  required String teachername,
  required String homeworktext,
  required String msgtime,
  required Gradient gradient,
  required void Function() ontouch,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: InkWell(
      hoverColor: Colors.white,
      splashColor: Colors.white,
      onTap: ontouch,
      child: Ink(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          gradient: gradient,
          boxShadow: const [
            BoxShadow(
              color: Color(0x29000000),
              offset: Offset(0, 6),
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subjecttitle,
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
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Text(
                  msgtime,
                  style: GoogleFonts.jost(
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              homeworktext,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: GoogleFonts.jost(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    ),
  );
}
