/* Ce fichier permet de garder des styles constant dans les applications, tels TextStyle etc..
Cela permet de garder un constance */
import 'package:flutter/material.dart';

enum ContentParamedic{
  nothing,
  aspirine,
  ntg,
  ntg8A,
  glucagon,
  epinephrine,
  nalaxone,
  salbutamol
}
const kAppBarTitleTextStyle = TextStyle(color: Colors.yellow,
fontWeight: FontWeight.bold);

const kTitleTextStyle = TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    fontStyle: FontStyle.italic);
