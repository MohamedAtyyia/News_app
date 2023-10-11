import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightMode() => ThemeData(
      scaffoldBackgroundColor:  Colors.white,
      appBarTheme: const AppBarTheme(
        color:Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          color: Colors.black,
        ),
        titleMedium: TextStyle(
          color: Colors.black,
        ),
        titleLarge: TextStyle(
          color: Colors.black,
        ),
      ),


    drawerTheme:const DrawerThemeData(
      backgroundColor: Colors.white
    ),
    iconTheme:const  IconThemeData(
      color: Colors.black
    )
    );
