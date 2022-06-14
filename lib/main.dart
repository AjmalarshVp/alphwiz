
// ignore_for_file: prefer_const_constructors

import 'package:alphwiz/splashsceen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

        title: 'Flutter Demo',
        theme: ThemeData(
          bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
        },
     
    );
  }
}

