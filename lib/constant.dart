/* Ce fichier permet de garder des styles constant dans les applications, tels TextStyle etc..
Cela permet de garder un constance */
import 'package:flutter/material.dart';

enum ContentParamedic {
  nothing,
  aspirine,
  ntg,
  ntg8A,
  glucagon,
  epinephrine,
  nalaxone,
  salbutamol,
  tech10,
  cpap,
  oxylator,
  cincinnati,
  eqtpt,
  glasgow,
  apgar,
}
const kAppBarTitleTextStyle =
    TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold);

const kTitleTextStyleTab = TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    fontStyle: FontStyle.italic);

const kSubTitleTextStyleTab = TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
    fontStyle: FontStyle.italic);

const kColorAppBar = Color(0xff100B26);
const kColorBackground = Color(0xffF9F622);

const double spaceBetweenContentCard = 10.0;
const double spaceBetweenContentItem = 3.0;
