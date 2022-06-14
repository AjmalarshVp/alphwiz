// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
       
        children: [
          Stack(
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
                          "assets/home_screen/Rectangle 21791.png",
                        ),
                        fit: BoxFit.fill)),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(3.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 140,
                       
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/home_screen/Group 57439.png",
                                ),
                                fit: BoxFit.fill)),
                      ),
                      
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Gold Buy price",
                                style: TextStyle(color: Color(0xFFFFFFFF))),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "5362.30/gm",
                              style: TextStyle(color: Color(0xFFB27E29)),
                            ),
                          ],
                        ),
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Color(0xFF15654F),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/google (1).png",
                          fit: BoxFit.fill,
                        ),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(39),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                )),
              ),
              SizedBox(
                height: 300,
              ),
              Column(
               
                children: [
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    height: 19.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/home_screen/Group 59090.png",
                            ),
                            fit: BoxFit.cover)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Text("Your own digital gold",
                                    style: TextStyle(color: Color(0xFFFFFFFF))),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "99.99% pure go;d",
                                  style: TextStyle(color: Color(0xFFB27E29)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "0.0000gm",
                          style: TextStyle(fontSize: 28),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          "Offer For You",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 19.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/home_screen/Group 57487.png",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          "Start your investment journey",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 15.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/home_screen/Rectangle 21791.png",
                            ),
                            fit: BoxFit.fill)),
                    
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 15.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //color: Colors.red
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/home_screen/offer.png",
                            ),
                            fit: BoxFit.fill)),
                    child: Column(
                      children: [
                        Text("Start your investment journey"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 19.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.red
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/home_screen/Group 59093.png",
                            ),
                            fit: BoxFit.fill)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
