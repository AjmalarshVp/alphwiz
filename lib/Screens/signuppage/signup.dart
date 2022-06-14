import 'package:alphwiz/Screens/signuppage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../backgroundsignup.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/top_bg.png',
                            ),
                            fit: BoxFit.cover)),
                    height: 110,
                    width: double.infinity,

                    // child: Padding(
                    //   padding: const EdgeInsets.only(left: 90, top: 40),
                    //   child: Text(
                    //     'Sign Up',
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 40,
                    //         color: Colors.blueGrey.withOpacity(0.5)),
                    //   ),
                    // ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  // Positioned(left: 0, top: 4, child: backbtn)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: GestureDetector(
                        child: const Align(
                          
                            alignment: Alignment.topLeft,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage("assets/images/Group 57280.png"),
                            )),
                        onTap: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Home screen – 1.png'),
                    fit: BoxFit.cover)),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 27,
                  ),

                  //

                  label('Your Name'),
                  Textfield('Enter Your Name  here '),
                  label('Your Mobile Number'),
                  Textfield('Enter Your Mobile Number'),
                  label('Your gender'),

                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      secondTextField('Male'),
                      kWidth,
                      secondTextField('Female'),
                      kWidth,
                      secondTextField('Other')
                    ],
                  ),

                  //
                  label('Your Age'),
                  Textfield('Enter your age'),

                  //
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          '''By signing up you agree to our Terms of Use and 
   Privacy Policy''',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),

                  //

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                  height: 7.h,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
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
                                    "Signup",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp),
                                  ))),
                            ),
                            // child: _RegisterButton(
                            //   ontap: () {
                            //   //  otpVerification(context);
                            //   },
                            //  ),
                          ),
                          // ButtonTheme(height: 100,
                          //   child: ElevatedButton(
                          //   onPressed: () {},
                          //   child: Text('''SIGN UP''',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                          //   style: ElevatedButton.styleFrom(primary: Colors.yellowAccent,
                          //     shape: StadiumBorder()),
                          //             ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Center(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Already have an Account? ",
                            style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        TextSpan(
                            text: "Login",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            recognizer: TapGestureRecognizer()
                              ..onTap = (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup_page()));
                              }))
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      )),
    );
  }

//////////////////////////////////////////////////////////////////////////////////
  Flexible secondTextField(String text) {
    return Flexible(
//         child: ElevatedButton(
//   onPressed: () {},
//   child:Text("male"),
//   style: ElevatedButton.styleFrom(
//     primary: Colors.yellowAccent,
//     shape: ,
//   ),
// ),
        // TextFormField(textAlign: TextAlign.center,
        //     decoration: InputDecoration(
        //         border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(30.0),
        //         ),
        //         filled: true,
        //         hintStyle: TextStyle(color: Colors.grey[800]),
        //         hintText: text,
        //         fillColor: kTextColor))
        // );
        child: TextButton(
            child: Text(text.toUpperCase(),
                style: TextStyle(fontSize: 14, color: Colors.white)),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF15654F)),
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF15654F)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29.0),
                        side: BorderSide(color: Color(0xFF15654F))))),
            onPressed: () => null));
  }

  var kWidth = SizedBox(
    width: 10,
  );

  Padding label(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, bottom: 5, top: 20),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  TextField Textfield(String text) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: text,
          fillColor: kTextColor),
    );
  }
}

var kTextColor = Colors.greenAccent.withOpacity(0.4);

var backbtn = ElevatedButton(
  onPressed: () {},
  child: Icon(
    Icons.arrow_back,
    color: Colors.black,
  ),
  style: ElevatedButton.styleFrom(
    primary: Colors.yellowAccent,
    shape: CircleBorder(),
  ),
);
