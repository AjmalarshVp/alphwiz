import 'package:alphwiz/onbordingScreen/bordingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    toHomeScreen( context);
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
           height: double.infinity,
           width: double.infinity,
            child: const Image(
              fit: BoxFit.cover,
            
              image: AssetImage("assets/Mask Group 2.png"),
            ),
          ),
             Center(
               child: Container(
           height: 200,
          
            child: const Image(
                fit: BoxFit.contain,
                width: 300,
               
                image: AssetImage("assets/images/Group 1.png"),
            ),
          ),
             ),
             SizedBox(),
        ],
      ),
    );
  }

  Future<void> toHomeScreen(BuildContext context ) async{
    await Future.delayed(const Duration(seconds: 3),()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnbodyScreen()));
    });
  }
}