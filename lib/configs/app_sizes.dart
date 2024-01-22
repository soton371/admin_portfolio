import 'package:flutter/material.dart';

class AppSizes{
  static const double bodyPadding = 15;
  static const double elevation = 0.5;

  static double width(context) => MediaQuery.sizeOf(context).width;
  static double height(context) => MediaQuery.sizeOf(context).height;
}