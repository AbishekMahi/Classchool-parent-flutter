import 'package:classchool/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 15, bottom: 15, left: 15),
                          padding: const EdgeInsets.only(
                              top: 40, right: 10, bottom: 10, left: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x29000000),
                                offset: Offset(0, 8),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Ad. No.',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Class',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'School',
                                      style: GoogleFonts.jost(
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ajith Kumar',
                                      style: GoogleFonts.jost(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '12AD2205',
                                      style: GoogleFonts.jost(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'VI - A',
                                      style: GoogleFonts.jost(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          height: 1.2,
                                          fontWeight: FontWeight.w400),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: 220,
                                      child: Text(
                                        'Adhiyaman Matriculation Higher Secondary School',
                                        style: GoogleFonts.jost(
                                            color: Colors.black87,
                                            fontSize: 18,
                                            height: 1.2,
                                            fontWeight: FontWeight.w400),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75.0),
                          border: Border.all(
                              width: 3.0, color: const Color(0xffffffff)),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 8),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 38,
                          backgroundImage:
                              const AssetImage('assets/images/man.jpg'),
                          backgroundColor: Colors.grey,
                          child: GestureDetector(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (_) => const ProfileImage(),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GridView.count(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: 3,
                    children: [
                      ExtraFeatures(
                        imageUrl: 'assets/images/file.png',
                        title: 'Files',
                        ontouch: () {},
                      ),
                      ExtraFeatures(
                        imageUrl: 'assets/images/saved.png',
                        title: 'Saved',
                        ontouch: () {},
                      ),
                      ExtraFeatures(
                        imageUrl: 'assets/images/devices.png',
                        title: 'Devices',
                        ontouch: () {},
                      ),
                      ExtraFeatures(
                        imageUrl: 'assets/images/key.png',
                        title: 'Privacy & Security',
                        ontouch: () {},
                      ),
                      ExtraFeatures(
                        imageUrl: 'assets/images/bell.png',
                        title: 'Notification Setting',
                        ontouch: () {},
                      ),
                      ExtraFeatures(
                        imageUrl: 'assets/images/faqs.png',
                        title: 'FAQs',
                        ontouch: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget ExtraFeatures({
  required String title,
  required String imageUrl,
  required void Function() ontouch,
}) {
  return InkWell(
    onTap: ontouch,
    child: Ink(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x29000000),
            offset: Offset(2, 8),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              imageUrl,
              height: 30,
            ),
          ),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.jost(
                  height: 1.1,
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    ),
  );
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 250,
        height: 280,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/man.jpg'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
