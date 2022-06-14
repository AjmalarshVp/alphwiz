import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:sizer/sizer.dart';

class Animation_button extends StatelessWidget {

  dynamic onpress;

  String txt;

  double? lsp;

  dynamic fgcl;

  dynamic txtclr;

  dynamic bgclr;

  dynamic Borderclr;

  dynamic fb;
  double? fs;

  Animation_button(
      {Key? key,
      required this.onpress,
      required this.txt,
      this.txtclr,
      this.Borderclr,
      this.bgclr,
      this.fb,
      this.fs,
      this.fgcl,
      this.lsp})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onPress: onpress,
      height: 60,
      width: 500,
      text: txt,
      //  isReverse: true,
    selectedTextColor: Colors.black,
      transitionType: TransitionType.LEFT_TO_RIGHT,

      textStyle: TextStyle(fontWeight: fb, letterSpacing: lsp,color: txtclr,fontSize: fs),
      selectedBackgroundColor: fgcl ?? Colors.white,
      backgroundColor: bgclr ?? Colors.pink,
      borderColor: Borderclr ?? Colors.red,
      borderRadius: 50,
      borderWidth: 2,
    );
  }
}