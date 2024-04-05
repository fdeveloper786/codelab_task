import 'package:codeland_app/utils/color_utils.dart';
import 'package:codeland_app/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle poppinsBlack20 = TextStyle(
      color: lightBlack,
      fontSize: getFontSize(20),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500);

  static TextStyle poppinsOrange15 = TextStyle(
      color: lightOrange,
      fontSize: getFontSize(10),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w100);
  static TextStyle poppinsWhite15 = TextStyle(
      color: white,
      fontSize: getFontSize(15),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500);

  static TextStyle poppinsWhite24 = TextStyle(
      color: white,
      fontSize: getFontSize(24),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600);

  static TextStyle poppinsWhite14 = TextStyle(
      color: white,
      fontSize: getFontSize(14),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400);

  static TextStyle poppinsGrey16 = TextStyle(
      color: grey,
      fontSize: getFontSize(16),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500);

  static TextStyle poppinsBlack12 = TextStyle(
      color: black,
      fontSize: getFontSize(12),
      height: 2.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none);

  static TextStyle poppinsBlack16 = TextStyle(
      color: black,
      fontSize: getFontSize(16),
      height: 2.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none);

  static TextStyle poppinsBlack14 = TextStyle(
      color: black,
      fontSize: getFontSize(16),
      height: 2.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none);

  static TextStyle poppinsOrange12 = TextStyle(
    color: textOrange,
    fontSize: getFontSize(12),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 2.0,
    decoration: TextDecoration.underline,
  );
  static TextStyle poppinsBlack13Bold = TextStyle(
    color: black,
    fontSize: getFontSize(13),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
}
