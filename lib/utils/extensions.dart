import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> months = [
  'Yanvar',
  'Fevral',
  'Mart',
  'Aprel',
  'May',
  'Iyun',
  'Iyul',
  'August',
  'Sentyabr',
  'Oktyabr',
  'Noyabr',
  'Dekabr',
];
extension DateTimeExtensions on DateTime{
  String format(){
    return "${months[month - 1]},$year";
  }
}




//////////////////////////////////////////////////////////////////
extension IntExtensions on int {
  Widget height() {
    return SizedBox(
      height: toDouble(),
    );
  }
///////////////////////////////////////////////////////////
  Widget width() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
////////////////////////////////////////////////////////////////
extension ContextExtesions on BuildContext {
  double width() {
    return MediaQuery.sizeOf(this).width;
  }
}

///\/\/\/\/\/\/\/\/\/\/\/\/\//\//\/\/\/\/\/\/\/\/\/\
class AppTextStyles {
  static const HeadLineblack = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    color: Color(
      0xFF1A202C,
    ),
  );
  ///////////////////////////////////////////////////////
  static const HeadLinebWhite = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );
  ////////////////////////////////////////////

  static const ParagraphbWhite = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  ///////////////////////////////////////////
  static const Paragraphblack = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color:Colors.black38,
  );
}
/////////////////////////////////////////////////////////////////////
abstract class AppDecorationsContainer {
  static const decorContainer = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(20),

      ),
      boxShadow: [
        BoxShadow(
          blurRadius: 1,
        ),
      ],
      color: Colors.white);


  ////////////////////////////////////////////////////////////////
  static const ContainerDecorshadow = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        spreadRadius: 5,
      ),
    ],
  );
}