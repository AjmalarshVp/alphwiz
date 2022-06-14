// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';

import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 1300,
              width: double.infinity,
              decoration: BoxDecoration(
                  // color: Colors.red
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Home screen – 1.png",
                      ),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 19.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Group 59089.png",
                      ),
                      fit: BoxFit.fill)),
              child: Center(
                  child: Text(
                "OTP",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              )),
            ),
            ListView(
                physics: const ClampingScrollPhysics(
                    parent: NeverScrollableScrollPhysics()),
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.w),
                    child: Form(
                      //key: formKey,
                      child: Column(
                        children: [
                          GestureDetector(
                              child: const Align(
                                  alignment: Alignment.topLeft,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                        "assets/images/Group 57280.png"),
                                  )),
                              onTap: () {
                                Navigator.pop(context);
                              }),
                          Padding(
                            padding: EdgeInsets.only(left: 8.w, right: 8.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 25.h,
                                ),

                                SizedBox(
                                  height: 6.h,
                                ),
                                Text("Enter Your 6 didgit code",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromARGB(
                                            255, 103, 102, 102))),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Text(
                                  "Dont share with anyone else",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromARGB(
                                          255, 103, 102, 102)),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Pinput(
                                    length: 6,
                                    
                                    focusNode: FocusNode(),
                                    
                                    defaultPinTheme: defaultPinTheme,
                                    showCursor: true,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  "Didnt get code?Resend",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 18),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                        height: 7.h,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color.fromARGB(
                                                    255, 246, 221, 31),
                                                Color.fromARGB(
                                                    228, 178, 125, 41)
                                              ]),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "VERIFY",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13.sp),
                                        ))),
                                  ),
                                  
                                ),
                                SizedBox(
                                  height: 8.5.h,
                                ),
                               
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ])
          ],
        ),
      ),
    );
  }

  final defaultPinTheme = PinTheme(
      width: 18.w,
      height: 8.h,
      textStyle: TextStyle(
          fontSize: 15.sp,
          color: const Color.fromRGBO(70, 69, 66, 1),
          fontWeight: FontWeight.bold),
      decoration: BoxDecoration(
        color: const Color.fromARGB(94, 202, 202, 202),
        borderRadius: BorderRadius.circular(24),
      ));
}
