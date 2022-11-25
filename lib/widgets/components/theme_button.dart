import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
   const ThemeButton(
      {
      this.btnColor = Colors.white,
      this.btnHeight = 50,
      this.btnWidth = 50,
      this.btnChild = const Icon(Icons.ac_unit),
      this.btnBorderColor = Colors.amber,
      this.btnRadius =0,
      Key? key, this.buttonAction
      }) : super(key: key);
  final Color btnColor, btnBorderColor;
  final double btnHeight, btnWidth, btnRadius;
 final  Widget btnChild;
  final Function()? buttonAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      width: btnWidth,
      margin:  const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(btnRadius),
      boxShadow: const [ BoxShadow(color: Colors.black12,
      spreadRadius: 0.4,
        blurRadius: 10,
        offset: Offset(0, 1), )]),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(btnColor),
          shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(btnRadius), ),
          ),),
        onPressed: buttonAction,
        child: btnChild,
      ),
    );
  }
}
