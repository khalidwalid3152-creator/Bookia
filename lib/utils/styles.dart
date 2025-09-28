import 'package:flutter/material.dart';

class textstyles {
  static TextStyle size30({
    Color? color,
    double? fontsize = 30,
    FontWeight? fontweight,
    String? fontfamily='DMSerifDisplay' 
  }) {
    return TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight,fontFamily: fontfamily);
  }

    static TextStyle size24({
    Color? color,
    double? fontsize = 24,
    FontWeight? fontweight,
    String? fontfamily='DMSerifDisplay' 
  }) {
    return TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight,fontFamily: fontfamily);
  }

    static TextStyle size20({
    Color? color,
    double? fontsize = 20,
    FontWeight? fontweight,
    String? fontfamily='DMSerifDisplay' 
  }) {
    return TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight,fontFamily: fontfamily);
  }

    static TextStyle size18({
    Color? color,
    double? fontsize = 18,
    FontWeight? fontweight,
    String? fontfamily='DMSerifDisplay' 
  }) {
    return TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight,fontFamily: fontfamily);
  }


    static TextStyle size16({
    Color? color,
    double? fontsize = 16,
    FontWeight? fontweight,
    String? fontfamily='DMSerifDisplay'
  }) {
    return TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight,fontFamily: fontfamily);
  }

    static TextStyle size14({
    Color? color,
    double? fontsize = 14,
    FontWeight? fontweight,
    String? fontfamily='DMSerifDisplay' 
  }) {
    return TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight,fontFamily: fontfamily);
  }
}
