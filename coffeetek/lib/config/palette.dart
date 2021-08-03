import 'package:flutter/material.dart';

var boldText =
    TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 30);
var midBoldText =
    TextStyle(color: Colors.brown, fontWeight: FontWeight.w500, fontSize: 20);

var whiteText = TextStyle(color: Colors.white);
var brownText = TextStyle(color: Colors.brown);
var blueText = TextStyle(color: Colors.blue);
var greyText = TextStyle(color: Colors.grey);
var blackText = TextStyle(color: Colors.black);

ButtonStyle flatButtonBrown(double width) {
  return TextButton.styleFrom(
      minimumSize: Size(width, 50),
      backgroundColor: Colors.brown,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)));
}

ButtonStyle flatButtonWhite(Color borderColor, double width) {
  return TextButton.styleFrom(
      minimumSize: Size(width, 50),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: borderColor)));
}

var add = TextButton.styleFrom(
    minimumSize: Size(60, 35),
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        side: BorderSide(color: Colors.brown)));

var substract = TextButton.styleFrom(
    minimumSize: Size(60, 35),
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        side: BorderSide(color: Colors.brown)));
