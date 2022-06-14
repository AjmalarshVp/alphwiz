// ignore_for_file: prefer_const_constructors

import 'package:alphwiz/Screens/signinpage.dart';
import 'package:alphwiz/Screens/signuppage/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Signup_page extends StatelessWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: 1500,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/Login Screen – 1.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 40.h,
                    width: 80.w,
                    child: Image.asset("assets/images/Group 1.png"),
                  ),
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _controller,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF15654F).withOpacity(0.2),
                      hintText: "Enter  10 digit mobile number",
                      hintStyle: TextStyle(fontSize: 12.sp),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF15654F)),
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF15654F), width: .3.w),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF15654F), width: .3.w),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF15654F), width: .3.w),
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                ),
                SizedBox(
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                  },
                  child: Container(
                      height: 7.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 246, 221, 31),
                              Color.fromARGB(228, 178, 125, 41)
                            ]),
                      ),
                      child: Center(
                          child: Text(
                        "GET OTP",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ))),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Center(
                    child: const Text(
                  "OR",
                  style: TextStyle(color: Colors.white),
                )),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 7.w,
                        backgroundImage: AssetImage("assets/facebook (4).png"),
                      ),
                      CircleAvatar(
                        radius: 7.w,
                        backgroundImage:
                            AssetImage("assets/images/google (1).png"),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an Account? ",
                          style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          recognizer: TapGestureRecognizer()..onTap = (() {

                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                          }))
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
