import 'package:flutter/material.dart';

const Color kDarkBlue = Color(0xFF0D0846);
const Color kGrey = Color(0xFF929292);
const Color kYellow = Color(0xFFFFAB2E);
const Color kLightGrey = Color(0xFFE1E1EA);
const Color kWhite = Color(0xFFFFFFFF);
const Color kBackground = Color(0xFFFBFBFD);

const kColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: kDarkBlue,
  primaryContainer: kDarkBlue,
  onPrimary: kWhite,
  secondaryContainer: kGrey,
  secondary: kGrey,
  onSecondary: kWhite,
  error: Colors.red,
  onError: kWhite,
  background: kBackground,
  onBackground: kWhite,
  surface: Colors.black,
  onSurface: kBackground,
);
