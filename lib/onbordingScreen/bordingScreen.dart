// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:alphwiz/custum/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Screens/backgroundsignup.dart';

class OnbodyScreen extends StatefulWidget {
  const OnbodyScreen({Key? key}) : super(key: key);

  @override
  State<OnbodyScreen> createState() => _OnbodyScreenState();
}

class _OnbodyScreenState extends State<OnbodyScreen> {
  bool islastpage = false;
  bool islastpage1 = false;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF0F261E),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup_page(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 18, color: Color(0xFFB27E29)),
                ),
              ),
            ),
            SizedBox(
              width: 5.h,
            )
          ],
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              if (index == 2) {
                islastpage1 = true;
              } else {
                islastpage1 = false;
              }
            });
            print(".............$islastpage1");
          },
          children: [
            Stack(
              children: [
                Container(
                  height: 1500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/Group 59081.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        children: [
                          Text(
                            "Safe invest with easy gold management",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 1500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/Group 59082.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        children: [
                          Text(
                            "Safe invest with easy gold management",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 1500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/Group 59083.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        children: [
                          Text(
                            "Safe invest with easy gold management",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        bottomSheet: islastpage1 == true
            ? GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Animation_button(
                    onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup_page(),
                          ));
                    },
                    txt: "Get Started",
                    txtclr: Colors.black,
                    fs: 19,
                    fb: FontWeight.bold,
                    bgclr: Color(0xFFB27E29),
                    Borderclr: Color(0xFFB27E29),
                    fgcl: Color(0xFFB27E29),
                  ),
                ),
              )
            : GestureDetector(
        
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Animation_button(
                    onpress: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease);
                    },
                    txt: "Next",
                    txtclr: Colors.black,
                    fs: 19,
                    fb: FontWeight.bold,
                    bgclr: Color(0xFFB27E29),
                    Borderclr: Color(0xFFB27E29),
                    fgcl: Color(0xFFB27E29),
                  ),
                ),
              ));
  }
}
