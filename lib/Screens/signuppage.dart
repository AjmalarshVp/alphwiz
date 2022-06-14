// ignore_for_file: prefer_const_constructors

import 'package:alphwiz/Screens/signuppage/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                height: 40.h,
                width: 80.w,
                child: Image.asset("assets/Login Screen – 1.png"),
              ),
            ),
            Text("Login"),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _controller,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  hintText: "Enter  10 digit mobile number",
                  hintStyle: TextStyle(fontSize: 12.sp),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: .3.w),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: .3.w),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: .3.w),
                    borderRadius: BorderRadius.circular(25.0),
                  )),
            ),
            SizedBox(
              height: 5.h,
            ),
            GestureDetector(
              onTap: () {},
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
            const Text("OR"),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 7.w,
                    child: Image.asset(
                      "assets/facebook (4).png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  CircleAvatar(
                    radius: 7.w,
                    backgroundImage: AssetImage(
                      "assets/images/google (1).png",
                    ),
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
                      recognizer: TapGestureRecognizer()
                        ..onTap = (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ));
                        }))
                ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
