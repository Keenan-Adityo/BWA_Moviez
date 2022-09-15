import 'package:core/core.dart';
import 'package:flutter/material.dart';

const TextStyle kHeading1 = TextStyle(
  fontFamily: 'Avenir',
  fontWeight: FontWeight.w900,
  fontSize: 28,
  color: kDarkBlue,
);

const TextStyle kHeading2 = TextStyle(
  fontFamily: 'Avenir',
  fontWeight: FontWeight.w900,
  fontSize: 24,
  color: kDarkBlue,
);

const TextStyle kHeading3 = TextStyle(
  fontFamily: 'Avenir',
  fontWeight: FontWeight.w800,
  fontSize: 20,
  color: kDarkBlue,
);

const TextStyle kSubtitle = TextStyle(
  fontFamily: 'Avenir',
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: kGrey,
);

const kTextTheme = TextTheme(
  headline1: kHeading1,
  headline2: kHeading2,
  headline3: kHeading3,
  subtitle1: kSubtitle,
);
