import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

//Screen Size        Trying to make it as resposive as possible :D
class ScreenSize {
  BuildContext context;

  ScreenSize(this.context) : assert(true);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

//Used Colors
const kPrimaryColor = Color(0x201336); //dark
const kSecondaryColor = Color(0x7a95cc); //light

//Main Text Heavy Style
final TextStyle txtStyleHeavy = TextStyle(
    fontWeight: FontWeight.w600,
    color: kPrimaryColor.withOpacity(1),
    fontSize: 40);
//Light Text Style
final TextStyle txtStyleLight = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: kPrimaryColor.withOpacity(1),
    fontSize: 15);

//Buttons Style
final ButtonStyle btnStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    primary: kSecondaryColor.withOpacity(1),
    shadowColor: kSecondaryColor.withOpacity(1),
    elevation: 5,
    fixedSize: Size(190, 45),
    textStyle: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w200));

//Categories Horizontal List Style
final ButtonStyle catgStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(color: Colors.grey)),
    primary: Colors.white,
    padding: EdgeInsets.all(12),
    shadowColor: Colors.white,
    elevation: 4,
    textStyle:
        GoogleFonts.poppins(fontSize: 12.5, fontWeight: FontWeight.w300));

final Image catgIcon = Image.asset('lib/assets/icons/icon-03.png',
    width: 20, height: 20, color: Colors.grey);

//Card Model
class CardModel {
  int id;
  String title, subtitle, price;
  ImageProvider bkg;
  VoidCallback? onCardClick;
  CardModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.bkg,
    this.onCardClick,
  });
}

//Used Pics
class Pics {
  static Image chair =
      Image.asset('lib/assets/images/chairs.png', fit: BoxFit.cover);
  static Image stand =
      Image.asset('lib/assets/images/stands.png', fit: BoxFit.cover);
  static Image sofa =
      Image.asset('lib/assets/images/sofas.png', fit: BoxFit.cover);
  static Image desk =
      Image.asset('lib/assets/images/desks.png', fit: BoxFit.cover);
}

//Buttons (+ , -)
final ButtonStyle incDec = ElevatedButton.styleFrom(
    fixedSize: Size(4, 5),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(color: kPrimaryColor.withOpacity(1), width: 0.5)),
    primary: Colors.white,
    shadowColor: Colors.white,
    elevation: 4,
    textStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold));

//Random Text
final String rndmText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.";
