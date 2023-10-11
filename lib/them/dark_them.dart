import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkMode() => ThemeData(
      scaffoldBackgroundColor: const Color(0xff323836),
      appBarTheme: const AppBarTheme(
        color: Color(0xff323836),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff323836),
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
        ),
        titleLarge: TextStyle(
          color: Colors.white,
        ),
      ),
 iconTheme:const  IconThemeData(
      color: Colors.white
    ),

    drawerTheme:const DrawerThemeData(
    
      backgroundColor: Color(0xff323836)
    ),
     dividerTheme:const DividerThemeData(
      color: Colors.white
     )
    ,

    
    );
