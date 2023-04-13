import 'package:d_books/core/manager/constants.dart';
import 'package:d_books/core/manager/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle({
  required Color? color,
  required double fontSize,
  required FontWeight fontWeight,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: FontsManager.montserrat,
  );
}

// Light style
TextStyle getLightStyle({
  required Color color,
  double fontSize = 12,
}) {
  return _getTextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeight.w300,
  );
}

// Regular style
TextStyle getRegularStyle({
  Color? color,
  double fontSize = 12,
}) {
  return _getTextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeight.normal,
  );
}

// Medium style
TextStyle getMediumStyle({
  Color? color,
  double fontSize = 12,
}) {
  return _getTextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeight.w500,
  );
}

// SemiBold style
TextStyle getSemiBoldStyle({
  Color? color,
  double fontSize = 12,
}) {
  return _getTextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeight.w600,
  );
}

// Bold style
TextStyle getBoldStyle({
  Color? color,
  double fontSize = 12,
}) {
  return _getTextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeight.w900,
  );
}
