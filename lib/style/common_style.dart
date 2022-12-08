import 'package:flutter/material.dart';

var titleTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  // 앱바 테마
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    actionsIconTheme: IconThemeData(color: Colors.black, size: 25),

  ),
  //앱바 안에 있는 인풋테마
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0x00000000),
        width: 1,
      ),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(4.0),
        topRight: Radius.circular(4.0),
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0x00000000),
        width: 1,
      ),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(4.0),
        topRight: Radius.circular(4.0),
      ),
    ),
    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
  ),

);

