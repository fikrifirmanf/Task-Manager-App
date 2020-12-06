import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lupa_password/screen/home_scr.dart';
import 'package:lupa_password/screen/onboard_scr.dart';
import 'package:lupa_password/utils/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //     statusBarIconBrightness: Brightness.dark,
    //     statusBarBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: OnBoardScr(),
      theme: ThemeData(
          fontFamily: "Konnect", scaffoldBackgroundColor: ColorUtils.bgColor),
    );
  }
}
