import 'package:flutter/material.dart';

const Color appTheme = Color(0xFFBD94FA);

const Color appThemeTop = Color(0XFFBD94FA);

const Color appThemeBottom = Color(0XFF7455F7);
const Color outlinedButtonColor = Color(0XFF9A76F9);
double? deviceHeight;
double? deviceWidth;

class DeviceLength extends StatelessWidget {
  const DeviceLength({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return const SizedBox();
  }
}
